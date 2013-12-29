require 'spec_helper'

describe Character do
  let( :character ) { Character.new }
  subject { character }

  describe "with valid attributes" do
    it { should be_valid }
  end
  describe "belongs to a Profession" do
    it { should belong_to( :profession ) }
  end
  describe "with some skills" do
    it { should respond_to :skills }
  end
  describe "with some developed skills" do
    its(:skills) { should_not be_nil }
    it { should respond_to :skill_levels }
  end
  describe "with assigned skills after being created" do
    it do
      sk = Skill.create
      pj = Character.create
      pj.skills.count.should eql Skill.count
    end
  end
  describe "with the assigned skills with its base percent as default value" do
    it do
      sk = Skill.create( name: "Buscar libros", base: "30" )
      pj = Character.create
      pj.skill_levels.first.percent.should eql 30
    end
  end
end