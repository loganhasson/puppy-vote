class ResultsController < ApplicationController

  def index
    @options = Option.all
  end
  
end