require 'spec_helper'

describe 'Assets', type: :feature, js: true do
  context 'compiled assets' do
    Given { }
    When { visit '/' }
    Then { URI(page.find('.test').text).path == '/assets/37892529-4daf1ef033944e9447ef3650e39fa44d.jpg' }
  end
end
