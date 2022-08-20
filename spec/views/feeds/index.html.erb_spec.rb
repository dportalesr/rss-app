require 'rails_helper'

RSpec.describe "feeds/index", type: :view do
  before(:each) do
    assign(:feeds, [
      Feed.create!(
        url: "Url"
      ),
      Feed.create!(
        url: "Url"
      )
    ])
  end

  it "renders a list of feeds" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Url".to_s), count: 2
  end
end
