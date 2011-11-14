class ArduinosController < ApplicationController

  def index
    @arduinos = Arduino.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @arduinos }
    end
  end

  def show
    @arduino = Arduino.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @arduino }
    end
  end

  def new
    @arduino = Arduino.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @arduino }
    end
  end

  def edit
    @arduino = Arduino.find(params[:id])
  end

  def create
    @arduino = Arduino.new(params[:arduino])

    respond_to do |format|
      if @arduino.save
        format.html { redirect_to(@arduino, :notice => 'Arduino was successfully created.') }
        format.xml  { render :xml => @arduino, :status => :created, :location => @arduino }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @arduino.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @arduino = Arduino.find(params[:id])

    respond_to do |format|
      if @arduino.update_attributes(params[:arduino])
        format.html { redirect_to(@arduino, :notice => 'Arduino was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @arduino.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /arduinos/1
  # DELETE /arduinos/1.xml
  def destroy
    @arduino = Arduino.find(params[:id])
    @arduino.destroy

    respond_to do |format|
      format.html { redirect_to(arduinos_url) }
      format.xml  { head :ok }
    end
  end
end
