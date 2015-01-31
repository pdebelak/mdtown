require 'rails_helper'

RSpec.describe "static_pages/home", :type => :view do
  
  it 'has the text "MDTown"' do
    render
    expect(rendered).to include('MDTown')
  end
end