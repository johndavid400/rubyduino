class PlaygroundController < ApplicationController

  def index
    @arduinos = Arduino.all
    @red = Pin.find_by_name("redpin")
  end

  def send_command
    @sp = SerialPort.new("/dev/ttyUSB0", 9600)

    if params[:greenled] == '1'
      @sp.write('p')
    elsif params[:redled] == '1'
      @sp.write('o')
    elsif params[:off] == '1'
      @sp.write('x')
    elsif params[:on] == '1'
      @sp.write('z')
    end

    redirect_to :back
  end

end
