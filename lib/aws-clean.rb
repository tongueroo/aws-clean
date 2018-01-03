$:.unshift(File.expand_path("../", __FILE__))
require "aws_clean/version"

# Use vendor version for quicker development and allows different submodules
# in parent project.
$:.unshift(File.expand_path("../../vendor/aws-inventory/lib", __FILE__))
require "aws-inventory"

module AwsClean
  autoload :Help, "aws_clean/help"
  autoload :Command, "aws_clean/command"
  autoload :CLI, "aws_clean/cli"
  autoload :Base, "aws_clean/base"
  autoload :AwsServices, "aws_clean/aws_services"
  autoload :SecurityGroup, "aws_clean/security_group"
  autoload :Keypair, "aws_clean/keypair"
end
