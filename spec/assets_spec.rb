require 'spec_helper'

describe 'Assets', type: :feature do
  context 'compiled assets' do
    Given { }
    When { visit '/' }
    Then { page.should have_text('Test') }
  end
end
