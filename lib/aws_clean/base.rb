# Child class must implement this interface.
# Methods:
#   perform - removes resources.  This method is called by the clean method
#     and by default does a dry run.
class AwsClean::Base
  include AwsClean::AwsServices

  def initialize(options)
    @options = options
  end

  def clean
    exit unless are_you_sure?

    perform # interface method
  end

  def are_you_sure?
    return true if @options[:live]

    puts "Are you sure you want to run this clean up method? (yes/no)"
    yes = $stdin.gets
    yes =~ /yes/
  end
end
