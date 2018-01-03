class AwsClean::SecurityGroup < AwsClean::Base
  def clean
    return if ENV['TEST'] # hack for specs

    inventory = AwsInventory::SecurityGroup::Unused.new(report: 'unused', header: false)
    inventory.data.each do |row|
      group_name, group_id = row
      next if group_name == "default" # skip the default group

      friendly_name = "#{group_id} (#{group_name})"

      sure = are_you_sure?("About to delete security group #{friendly_name}")
      if sure
        ec2.delete_security_group(group_id: group_id)
        puts "Deleted #{friendly_name}"
      else
        puts "Did not delete #{friendly_name}"
      end
    end
  end
end
