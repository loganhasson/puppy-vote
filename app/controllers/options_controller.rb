class OptionsController < ApplicationController
  before_action :set_option, only: [:update]

  def index
    @options = Option.all
  end

  def update
    if @option.increase_count
      redirect_to results_url, notice: 'Thanks for your vote!'
    else
      redirect_to options_url, notice: 'There was an error recording your vote. Please try again.'
    end
  end

  private
    def set_option
      @option = Option.find(option_params[:id])
    end

    def option_params
      params.require(:option).permit(:id)
    end
end
