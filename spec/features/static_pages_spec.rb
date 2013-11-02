require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should work and have a specific content" do
      visit '/static_pages/home'
      page.should have_title(
        "#{ I18n.t( 'title_row' ) } | #{ I18n.t( 'static_pages.home.title' ) }"
        )
    end
  end
end
