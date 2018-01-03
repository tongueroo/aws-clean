require 'aws-sdk'

module AwsClean::AwsServices
  def ec2
    @ec2 ||= Aws::EC2::Client.new
  end
end
