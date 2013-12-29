require 'spec_helper'

describe Personaje do
  describe "with valid attributes" do
    let( :personaje ) { Personaje.new }
    subject { personaje }

    it { should be_valid }
  end
end