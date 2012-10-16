class OffcutsController < ApplicationController
  # GET /offcuts
  # GET /offcuts.json

  def index
    @offcuts = Offcut.search(params)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @offcuts }
    end
  end

  def index_in_use
     @offcuts = Offcut.find(:all, :conditions => ['in_use = ?', true])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @offcuts }
    end
  end

  def index_used_up
    @offcuts = Offcut.find(:all, :conditions => ['use_up = ?', true])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @offcuts }
    end
  end

  # GET /offcuts/1
  # GET /offcuts/1.json
  def show
    @offcut = Offcut.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @offcut }
    end
  end

  # GET /offcuts/new
  # GET /offcuts/new.json
  def new
    @offcut = Offcut.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @offcut }
    end
  end

  # GET /offcuts/1/edit
  def edit
    @offcut = Offcut.find(params[:id])
  end

  # POST /offcuts
  # POST /offcuts.json
  def create
    @offcut = Offcut.new(params[:offcut])

    respond_to do |format|
      if @offcut.save
        format.html { redirect_to @offcut, notice: 'Offcut was successfully created.' }
        format.json { render json: @offcut, status: :created, location: @offcut }
      else
        format.html { render action: "new" }
        format.json { render json: @offcut.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /offcuts/1
  # PUT /offcuts/1.json
  def update
    @offcut = Offcut.find(params[:id])

    respond_to do |format|
      if @offcut.update_attributes(params[:offcut])
        format.html { redirect_to @offcut, notice: 'Offcut was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @offcut.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offcuts/1
  # DELETE /offcuts/1.json
  def destroy
    @offcut = Offcut.find(params[:id])
    @offcut.destroy

    respond_to do |format|
      format.html { redirect_to offcuts_url }
      format.json { head :no_content }
    end
  end
end
