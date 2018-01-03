require "thor"

module AwsClean
  class Command < Thor
    class << self
      def dispatch(m, args, options, config)
        # Allow calling for help via:
        #   aws_clean command help
        #   aws_clean command -h
        #   aws_clean command --help
        #   aws_clean command -D
        #
        # as well thor's normal way:
        #
        #   aws_clean help command
        help_flags = Thor::HELP_MAPPINGS + ["help"]
        if args.length > 1 && !(args & help_flags).empty?
          args -= help_flags
          args.insert(-2, "help")
        end
        super
      end
    end
  end
end
