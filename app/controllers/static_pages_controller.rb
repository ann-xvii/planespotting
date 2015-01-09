class StaticPagesController < ApplicationController
  def home
  end

  def index
  	respond_to do |format|
    format.json { render :json => { 1 => "First", 2 => "Second"} }
  end
end
end
