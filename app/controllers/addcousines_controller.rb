class AddcousinesController < ApplicationController
  # GET /addcousines
  # GET /addcousines.json
  def index
    @addcousines = Addcousine.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @addcousines }
    end
  end

  # GET /addcousines/1
  # GET /addcousines/1.json
  def show
    @addcousine = Addcousine.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @addcousine }
    end
  end

  # GET /addcousines/new
  # GET /addcousines/new.json
  def new
    @addcousine = Addcousine.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @addcousine }
    end
  end

  # GET /addcousines/1/edit
  def edit
    @addcousine = Addcousine.find(params[:id])
  end

  # POST /addcousines
  # POST /addcousines.json
  def create
    @addcousine = Addcousine.new(params[:addcousine])

    respond_to do |format|
      if @addcousine.save
        format.html { redirect_to @addcousine, notice: 'Addcousine was successfully created.' }
        format.json { render json: @addcousine, status: :created, location: @addcousine }
      else
        format.html { render action: "new" }
        format.json { render json: @addcousine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /addcousines/1
  # PUT /addcousines/1.json
  def update
    @addcousine = Addcousine.find(params[:id])

    respond_to do |format|
      if @addcousine.update_attributes(params[:addcousine])
        format.html { redirect_to @addcousine, notice: 'Addcousine was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @addcousine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addcousines/1
  # DELETE /addcousines/1.json
  def destroy
    @addcousine = Addcousine.find(params[:id])
    @addcousine.destroy

    respond_to do |format|
      format.html { redirect_to addcousines_url }
      format.json { head :no_content }
    end
  end
end
