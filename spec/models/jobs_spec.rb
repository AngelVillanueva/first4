require 'spec_helper'

describe Job do
  describe "with valid attributes" do
    let( :job ) { Job.new }
    subject { job }

    it { should be_valid }
  end
end