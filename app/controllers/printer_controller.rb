class PrinterController < ApplicationController
  def index
    @printers = Printer.all
  end
  def new
    @printer = Printer.new
  end
end
