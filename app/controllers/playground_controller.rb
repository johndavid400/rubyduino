class PlaygroundController < ApplicationController

  def index
    @arduinos = Arduino.all
    @redpin = Pin.find_by_name("redpin")
    @redpin2 = Pin.find_by_name("redpin2")
    @greenpin = Pin.find_by_name("greenpin")
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

  def redled
    @sp = SerialPort.new("/dev/ttyUSB0", 9600)
    @redpin = Pin.find_by_name("redpin")
    if !@redpin.active?
      @sp.write('f')
      @redpin.active = true
      @redpin.save
    else
      @sp.write('g')
      @redpin.active = false
      @redpin.save
    end
    redirect_to :back
  end

  def redled2
    @sp = SerialPort.new("/dev/ttyUSB0", 9600)
    @redpin2 = Pin.find_by_name("redpin2")
    if !@redpin2.active?
      @sp.write('h')
      @redpin2.active = true
      @redpin2.save
    else
      @sp.write('i')
      @redpin2.active = false
      @redpin2.save
    end
    redirect_to :back
  end

  def turn_off
    @redpin = Pin.find_by_name("redpin")
    @greenpin = Pin.find_by_name("greenpin")
    @redpin2 = Pin.find_by_name("redpin2")

    @sp = SerialPort.new("/dev/ttyUSB0", 9600)
    @sp.write('x')

    @redpin2.active = false
    @redpin2.save
    @redpin.active = false
    @redpin.save
    @greenpin.active = false
    @greenpin.save

    redirect_to :back
  end

  def turn_on
    @redpin = Pin.find_by_name("redpin")
    @greenpin = Pin.find_by_name("greenpin")
    @redpin2 = Pin.find_by_name("redpin2")

    @sp = SerialPort.new("/dev/ttyUSB0", 9600)
    @sp.write('y')

    @redpin2.active = true
    @redpin2.save
    @redpin.active = true
    @redpin.save
    @greenpin.active = true
    @greenpin.save

    redirect_to :back
  end

  def blink
    @sp = SerialPort.new("/dev/ttyUSB0", 9600)
    @sp.write('z')
    redirect_to :back
  end

end
