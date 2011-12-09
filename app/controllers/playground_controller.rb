class PlaygroundController < ApplicationController

  def index
    @arduinos = Arduino.all
    @redpin = Pin.find_by_name("redpin")
    @redpin2 = Pin.find_by_name("redpin2")
    @greenpin = Pin.find_by_name("greenpin")
  end

  def test
    @arduino = Arduino.first
    @pins = @arduino.pins
  end

  def pin
    @sp = SerialPort.new("/dev/ttyUSB0", 9600)
    @pin = Pin.find_by_number(params[:pin_number])
    decode(@pin)
    debugger
    redirect_to :back
  end

  def decode pin
    if pin == 10
      value = 104
    elsif pin == 48
      value = 100
    end
    write(value)
  end

  def write value
    @sp = SerialPort.new(@pin.arduino.port, @pin.arduino.speed)
    @sp.write(value)
  end

  def greenled
    @sp = SerialPort.new("/dev/ttyUSB0", 9600)
    @greenpin = Pin.find_by_name("greenpin")
    if !@greenpin.active?
      @sp.write('d')
      @greenpin.active = true
      @greenpin.save
    else
      @sp.write('e')
      @greenpin.active = false
      @greenpin.save
    end
    redirect_to :back
  end

end
