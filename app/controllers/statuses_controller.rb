class StatusesController < ApplicationController
  def new
  	@status = Status.new
  end

  def index
  	@statuses = Status.all
  end


end
