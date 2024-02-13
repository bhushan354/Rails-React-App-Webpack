class RootController < ApplicationController
  def index
    render file: 'app/views/root/index.html.erb', layout: false
  end
end
