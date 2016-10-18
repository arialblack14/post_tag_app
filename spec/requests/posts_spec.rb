require 'rails_helper'

RSpec.describe "Posts", type: :request do
  subject { page }

  describe "index page" do
    before { visit root_path }

    it { should have_content('All posts') }
    it { should have_title('Posts') }
  end
end
