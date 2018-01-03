$:.unshift(File.expand_path("../", __FILE__))
require "aws_clean/version"

module AwsClean
  autoload :Help, "aws_clean/help"
  autoload :Command, "aws_clean/command"
  autoload :CLI, "aws_clean/cli"
  autoload :Base, "aws_clean/base"
  autoload :AwsServices, "aws_clean/aws_services"
  autoload :SecurityGroup, "aws_clean/security_group"
end
