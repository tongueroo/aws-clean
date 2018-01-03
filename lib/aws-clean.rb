$:.unshift(File.expand_path("../", __FILE__))
require "aws_clean/version"

module AwsClean
  autoload :Help, "aws_clean/help"
  autoload :Command, "aws_clean/command"
  autoload :CLI, "aws_clean/cli"
end
