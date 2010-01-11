class PlatitudesController < ApplicationController
  # GET /platitudes
  # GET /platitudes.xml
  def index
    @platitudes = Platitude.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @platitudes }
    end
  end

  # GET /platitudes/1
  # GET /platitudes/1.xml
  def show
    @platitude = Platitude.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @platitude }
    end
  end

  # GET /platitudes/new
  # GET /platitudes/new.xml
  def new
    @platitude = Platitude.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @platitude }
    end
  end

  # GET /platitudes/1/edit
  def edit
    @platitude = Platitude.find(params[:id])
  end

  # POST /platitudes
  # POST /platitudes.xml
  def create
    @platitude = Platitude.new(params[:platitude])

    respond_to do |format|
      if @platitude.save
        flash[:notice] = 'Platitude was successfully created.'
        format.html { redirect_to(@platitude) }
        format.xml  { render :xml => @platitude, :status => :created, :location => @platitude }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @platitude.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /platitudes/1
  # PUT /platitudes/1.xml
  def update
    @platitude = Platitude.find(params[:id])

    respond_to do |format|
      if @platitude.update_attributes(params[:platitude])
        flash[:notice] = 'Platitude was successfully updated.'
        format.html { redirect_to(@platitude) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @platitude.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /platitudes/1
  # DELETE /platitudes/1.xml
  def destroy
    @platitude = Platitude.find(params[:id])
    @platitude.destroy

    respond_to do |format|
      format.html { redirect_to(platitudes_url) }
      format.xml  { head :ok }
    end
  end
end
