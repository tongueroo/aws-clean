require 'pp'

class AwsClean::Keypair < AwsClean::Base
  def clean
    return if ENV['TEST'] # hack for specs

    inventory = AwsInventory::Keypair.new(header: false)
    inventory.data.each do |row|
      key_name, instances_count = row
      in_use = instances_count > 0
      next if in_use

      sure = are_you_sure?("About to keypair #{key_name}")
      if sure
        ec2.delete_key_pair(key_name: key_name)
        puts "Deleted #{key_name}"
      else
        puts "Did not delete #{key_name}"
      end
    end
  end
end
