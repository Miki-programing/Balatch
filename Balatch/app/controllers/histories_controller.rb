class HistoriesController < ApplicationController

  def index
    @histories = History.all
  end

  def new
    @history = History.new()
  end
  
  

end
