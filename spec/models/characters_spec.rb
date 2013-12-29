require 'spec_helper'

describe Character do
  let( :character ) { Character.new }
  subject { character }

  describe "with valid attributes" do
    it { should be_valid }
  end
  describe "belongs to a job" do
    it { should belong_to( :job ) }
  end
end