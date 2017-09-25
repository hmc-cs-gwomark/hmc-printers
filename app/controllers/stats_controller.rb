class StatsController < ApplicationController
  def index
    @stats = Stat.all
    @ids= Printer.pluck(:ids)
    @statuses = Hash.new()
    @ids.each do |t|
      @statuses[t] = Stat.where(:ids => t)
    end


  end
end
