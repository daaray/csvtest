class ReenactmentsController < ApplicationController
  # GET /reenactments
  # GET /reenactments.xml
  def index
    @reenactments = Reenactment.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @reenactments }
    end
  end

  # GET /reenactments/1
  # GET /reenactments/1.xml
  def show
    @reenactment = Reenactment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @reenactment }
    end
  end

  # GET /reenactments/new
  # GET /reenactments/new.xml
  def new
    @reenactment = Reenactment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @reenactment }
    end
  end

  # GET /reenactments/1/edit
  def edit
    @reenactment = Reenactment.find(params[:id])
  end

  # POST /reenactments
  # POST /reenactments.xml
  def create
    @reenactment = Reenactment.new(params[:reenactment])

    respond_to do |format|
      if @reenactment.save
        format.html { redirect_to(@reenactment, :notice => 'Reenactment was successfully created.') }
        format.xml  { render :xml => @reenactment, :status => :created, :location => @reenactment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @reenactment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /reenactments/1
  # PUT /reenactments/1.xml
  def update
    @reenactment = Reenactment.find(params[:id])

    respond_to do |format|
      if @reenactment.update_attributes(params[:reenactment])
        format.html { redirect_to(@reenactment, :notice => 'Reenactment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @reenactment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /reenactments/1
  # DELETE /reenactments/1.xml
  def destroy
    @reenactment = Reenactment.find(params[:id])
    @reenactment.destroy

    respond_to do |format|
      format.html { redirect_to(reenactments_url) }
      format.xml  { head :ok }
    end
  end
end
