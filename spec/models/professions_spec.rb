require 'spec_helper'

describe Profession do
  describe "with valid attributes" do
    let( :profession ) { Profession.new }
    subject { profession }

    it { should respond_to :characters }
    it { should be_valid }
  end
end