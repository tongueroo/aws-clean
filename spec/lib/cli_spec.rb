require "spec_helper"

describe AwsClean::CLI do
  before(:all) do
    @args = ""
  end

  %w[
    sg
    keypair
  ].each do |command|
    it command do
      out = execute("exe/aws-clean #{command} #{@args}")
      expect(out).to eq ""
    end
  end
end
