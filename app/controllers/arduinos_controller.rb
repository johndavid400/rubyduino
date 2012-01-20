class ArduinosController < ApplicationController

  def index
    @arduinos = Arduino.all
  end

  def show
    @arduino = Arduino.find(params[:id])
  end

  def new
    @arduino = Arduino.new
  end

  def edit
    @arduino = Arduino.find(params[:id])
  end

  def create
    @arduino = Arduino.new(params[:arduino])
    if @arduino.save
      redirect_to(@arduino, :notice => 'Arduino was successfully created.')
    else
      render :action => "new"
    end
  end

  def update
    @arduino = Arduino.find(params[:id])
    if @arduino.update_attributes(params[:arduino])
      redirect_to(@arduino, :notice => 'Arduino was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @arduino = Arduino.find(params[:id])
    @arduino.destroy
    redirect_to(arduinos_url)
  end
end
