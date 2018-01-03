module AwsClean
  class CLI < Command
    class_option :verbose, type: :boolean
    class_option :sure, type: :boolean

    desc "sg", "clean unused security groups"
    long_desc Help.text(:sg)
    def sg
      SecurityGroup.new(options).clean
    end

    desc "keypair", "clean unused keypairs"
    long_desc Help.text(:keypair)
    def keypair
      Keypair.new(options).clean
    end
  end
end
