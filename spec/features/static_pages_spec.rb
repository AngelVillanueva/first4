require 'spec_helper'

describe "StaticPages" do
  let(:base_title) { I18n.t( 'title_row' ) }

  describe "Home page" do

    it "should work and have a specific content" do
      visit '/static_pages/home'
      page.should have_title(
        "#{ base_title } | #{ I18n.t( 'static_pages.home.title' ) }"
        )
    end
  end
end
