require 'rails_helper'

RSpec.describe StaticPagesController, :type => :controller do
  
  describe 'home page' do
    
    it 'renders the home template' do
      get :home
      expect(response).to render_template 'home'
    end
    
  end
end
