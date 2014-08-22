class HomepagesController < ApplicationController

  def index
    render('/index.html.erb')
  end
end
