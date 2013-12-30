require 'spec_helper'

describe Profession do
  let( :profession ) { Profession.new }
  subject { profession }
  
  describe "with valid attributes" do
    it { should respond_to :characters }
    it { should respond_to :skills }
    it { should be_valid }
  end
  describe "with some linked skills" do
    it do
      sk = Skill.create( name: "Buscar libros", base: 30 )
      pr = Profession.create( name: "Historiador" )
      expect { pr.skills << sk }.to change( pr.skills, :count ).by( 1 )
      pj = Character.create
      pr.characters << pj
      pj.profession.skills.should include sk
    end
  end
end