class EducationController < ApplicationController
  # GET /education
  # GET /education.xml
  def index
   
	@education = Education.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @education }
    end
  end

  # GET /education/1
  # GET /education/1.xml
  def show
    @education = Education.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @education }
    end
  end

  # GET /education/new
  # GET /education/new.xml
  def new
    @education = Education.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @education }
    end
  end

  # GET /education/1/edit
  def edit
    @education = Education.find(params[:id])
  end

  # POST /education
  # POST /education.xml
  def create
    @education = Education.new(params[:education])

    respond_to do |format|
      if @education.save
        flash[:notice] = 'Education was successfully created.'
        format.html { redirect_to(@education) }
        format.xml  { render :xml => @education, :status => :created, :location => @education }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @education.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /education/1
  # PUT /education/1.xml
  def update
    @education = Education.find(params[:id])

    respond_to do |format|
      if @education.update_attributes(params[:education])
        flash[:notice] = 'Education was successfully updated.'
        format.html { redirect_to(@education) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @education.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /education/1
  # DELETE /education/1.xml
  def destroy
    @education = Education.find(params[:id])
    @education.destroy

    respond_to do |format|
      format.html { redirect_to(education_url) }
      format.xml  { head :ok }
    end
  end

USERNAME, PASSWORD = "wbzyl", "sekret"
  before_filter :authenticate, :only => [:new, :edit, :destroy]

private
  def authenticate
    authenticate_or_request_with_http_basic do |username, password| 
      (username == USERNAME) && (password == PASSWORD)
    end
  end     

end
