class FootersController < ApplicationController

  def index
    @footer = Footer.search(params)
  end

  def show
    @footer = Footer.find(params[:id])
  end

  def new
    #redirect_to new_user_session_path unless current_user
    @footer = Footer.new
  end

end
