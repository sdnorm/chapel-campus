class SermonsController < ApplicationController
  before_action :set_sermon, only: [:show, :edit, :update, :destroy]

  # GET /sermons
  # GET /sermons.json
  def index
    @sermons = Sermon.all
    @sermon = Sermon.last
  end

  # GET /sermons/1
  # GET /sermons/1.json
  def show
  end

  # GET /sermons/new
  def new
    @sermon = Sermon.new
  end

  # GET /sermons/1/edit
  def edit
  end

  # POST /sermons
  # POST /sermons.json
  def create
    @sermon = Sermon.new(sermon_params)

    respond_to do |format|
      if @sermon.save
        format.html { redirect_to @sermon, notice: 'Sermon was successfully created.' }
        format.json { render :show, status: :created, location: @sermon }
      else
        format.html { render :new }
        format.json { render json: @sermon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sermons/1
  # PATCH/PUT /sermons/1.json
  def update
    respond_to do |format|
      if @sermon.update(sermon_params)
        format.html { redirect_to @sermon, notice: 'Sermon was successfully updated.' }
        format.json { render :show, status: :ok, location: @sermon }
      else
        format.html { render :edit }
        format.json { render json: @sermon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sermons/1
  # DELETE /sermons/1.json
  def destroy
    @sermon.destroy
    respond_to do |format|
      format.html { redirect_to sermons_url, notice: 'Sermon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sermon
      @sermon = Sermon.includes(:sermon_sections).find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sermon_params
      params.require(:sermon).permit(:title, :speaker, :date)
    end
end
