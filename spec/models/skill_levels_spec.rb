require 'spec_helper'

describe SkillLevel do
  let( :skill_level ) { SkillLevel.new }
  subject { skill_level }

  describe "with valid attributes" do
    it { should belong_to :character }
    it { should belong_to :skill }
    it { should be_valid }
  end
end