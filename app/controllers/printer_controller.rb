class PrinterController < ApplicationController
  include StatsHelper
  def index
    @printers = Printer.all
  end

  def new
    @printer = Printer.new
  end

  def update
    @printer= Printer.where(:ids => params[:ids])
    if @printer.update(printer_params)
       #p printer_params[:issue]
       stats_make(params[:ids],printer_params[:status],printer_params[:issue])
       redirect_to '/printers'
     else
       render 'index'
     end
  end

  def create
    @printer = Printer.new(printer_params)
    if @printer.save
      redirect_to '/printers'
    else
      render 'index'
    end
  end

  private
    def printer_params
      params.require(:printer).permit(:name,:ids,:status,:issue)
    end
end
