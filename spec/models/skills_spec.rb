require 'spec_helper'

describe Skill do
  let( :skill ) { Skill.new }
  subject { skill }

  describe "with valid attributes" do
    it { should be_valid }
  end
  describe "could be used by characters" do
    it { should respond_to :characters }
  end
  describe "developed by one or more characters" do
    its( :characters ) { should_not be_nil }
    it { should respond_to :skill_levels }
  end
end