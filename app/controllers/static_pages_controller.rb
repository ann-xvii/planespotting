class StaticPagesController < ApplicationController
  # before_action :load
  # url = "app/assets/javascripts/countries.topo.json"
  # json_str = HTTParty.get(url).body
  # an_object = JSON.parse(json_str)

  # puts an

  def home
  	# @data = File.read("app/assets/javascripts/countries.topo.json")
  	# render :json => @data
  end


  def index
  	respond_to do |format|
    format.json { render :json => { 1 => "First", 2 => "Second"} }
  end

  # def load
  # 	@data = File.read("app/assets/javascripts/countries.topo.json")
  # 	render :json => @data
  # end
end
end

# countries.topo.json