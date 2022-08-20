require 'rails_helper'

describe Feed do
  describe 'validations' do
    it 'fails when url field is not a URL' do
      expect(Feed.new(url: 'popo')).to be_invalid
    end

    it 'works when url field is a URL' do
      expect(Feed.new(url: 'https://example.com')).to be_valid
    end
  end
end
