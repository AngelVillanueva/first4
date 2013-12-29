require 'spec_helper'

describe Character do
  describe "with valid attributes" do
    let( :character ) { Character.new }
    subject { character }

    it { should be_valid }
  end
end