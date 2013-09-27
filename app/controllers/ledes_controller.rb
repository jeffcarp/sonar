class LedesController < ApplicationController

  def index
    @leader = Lede.find_or_create_by_position('leader')
    @primary = Lede.find_or_create_by_position('primary')
    @secondary = Lede.where('position=?', 'secondary').limit(5)
  end

  # GET /ledes/1
  # GET /ledes/1.json
  def show
    @lede = Lede.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lede }
    end
  end

  # GET /ledes/new
  # GET /ledes/new.json
  def new
    @lede = Lede.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lede }
    end
  end

  # GET /ledes/1/edit
  def edit
    @lede = Lede.find(params[:id])
  end

  # POST /ledes
  # POST /ledes.json
  def create
    @lede = Lede.new(params[:lede])

    respond_to do |format|
      if @lede.save
        format.html { redirect_to @lede, notice: 'Lede was successfully created.' }
        format.json { render json: @lede, status: :created, location: @lede }
      else
        format.html { render action: "new" }
        format.json { render json: @lede.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ledes/1
  # PUT /ledes/1.json
  def update
    @lede = Lede.find(params[:id])

    respond_to do |format|
      if @lede.update_attributes(params[:lede])
        format.html { redirect_to @lede, notice: 'Lede was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lede.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ledes/1
  # DELETE /ledes/1.json
  def destroy
    @lede = Lede.find(params[:id])
    @lede.destroy

    respond_to do |format|
      format.html { redirect_to ledes_url }
      format.json { head :no_content }
    end
  end
end
