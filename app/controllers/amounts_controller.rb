class AmountsController < ApplicationController
  # GET /amounts
  # GET /amounts.xml
  def index
    @amounts = Amount.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @amounts }
    end
  end

  # GET /amounts/1
  # GET /amounts/1.xml
  def show
    @amount = Amount.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @amount }
    end
  end

  # GET /amounts/new
  # GET /amounts/new.xml
  def new
    @amount = Amount.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @amount }
    end
  end

  # GET /amounts/1/edit
  def edit
    @amount = Amount.find(params[:id])
  end

  # POST /amounts
  # POST /amounts.xml
  def create
    @amount = Amount.new(params[:amount])

    respond_to do |format|
      if @amount.save
        flash[:notice] = 'Amount was successfully created.'
        format.html { redirect_to(@amount) }
        format.xml  { render :xml => @amount, :status => :created, :location => @amount }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @amount.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /amounts/1
  # PUT /amounts/1.xml
  def update
    @amount = Amount.find(params[:id])

    respond_to do |format|
      if @amount.update_attributes(params[:amount])
        flash[:notice] = 'Amount was successfully updated.'
        format.html { redirect_to(@amount) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @amount.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /amounts/1
  # DELETE /amounts/1.xml
  def destroy
    @amount = Amount.find(params[:id])
    @amount.destroy

    respond_to do |format|
      format.html { redirect_to(amounts_url) }
      format.xml  { head :ok }
    end
  end
end
