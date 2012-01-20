class PlaygroundController < ApplicationController

  def index
    @arduinos = Arduino.all
  end

  def select_arduino
    @arduino = Arduino.find(params[:arduino])
    redirect_to arduino_path(@arduino)
  end

end
