require "spec_helper"

describe AwsClean::CLI do
  before(:all) do
    @args = ""
  end

  %w[
    sg
  ].each do |command|
    it command do
      out = execute("exe/aws-clean #{command} #{@args}")
      expect(out).to include("Did not delete")
    end
  end
end
