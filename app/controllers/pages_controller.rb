class PagesController < ApplicationController
  def index
    data = { message: 'Welcome to the API!' }
    render json: data
  end
end
