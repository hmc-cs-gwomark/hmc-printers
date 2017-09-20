class PrinterController < ApplicationController
  def index
    @printers = Printer.all
  end

  def new
    @printer = Printer.new
  end

  def update
    @printer= Printer.where(:ids => params[:ids])
    if @printer.update(printer_params)
       redirect_to '/printers'
     else
       render 'index'
     end
  end
  
  # def create
  #   @printer = Printer.new(printer_params)
  # end

  private
    def printer_params
      params.require(:printer).permit(:name,:ids,:status,:issue)
    end
end
