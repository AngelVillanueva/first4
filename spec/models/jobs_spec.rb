require 'spec_helper'

describe Job do
  describe "with valid attributes" do
    let( :job ) { Job.new }
    subject { job }

    it { should respond_to :characters }
    it { should be_valid }
  end
end