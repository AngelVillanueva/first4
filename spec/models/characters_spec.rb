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
end