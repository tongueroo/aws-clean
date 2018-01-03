# Child class must implement this interface.
# Methods:
#   clean - removes resources.  This method should use the are_you_sure? method to
#     prompt the user before deleting.
class AwsClean::Base
  include AwsClean::AwsServices

  def initialize(options)
    @options = options
  end

  def are_you_sure?(message)
    return false if ENV['TEST']
    return true if @options[:sure]
    puts message

    puts "Are you sure? (yes/no)"
    yes = $stdin.gets
    yes =~ /yes/
  end
end
