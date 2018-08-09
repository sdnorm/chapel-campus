class SermonSectionsController < ApplicationController
  before_action :set_sermon_section, only: [:show, :edit, :update, :destroy]

  # GET /sermon_sections
  # GET /sermon_sections.json
  def index
    @sermon_sections = SermonSection.all
  end

  # GET /sermon_sections/1
  # GET /sermon_sections/1.json
  def show
  end

  # GET /sermon_sections/new
  def new
    @sermon_section = SermonSection.new
  end

  # GET /sermon_sections/1/edit
  def edit
  end

  # POST /sermon_sections
  # POST /sermon_sections.json
  def create
    @sermon_section = SermonSection.new(sermon_section_params)

    respond_to do |format|
      if @sermon_section.save
        format.html { redirect_to @sermon_section, notice: 'Sermon section was successfully created.' }
        format.json { render :show, status: :created, location: @sermon_section }
      else
        format.html { render :new }
        format.json { render json: @sermon_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sermon_sections/1
  # PATCH/PUT /sermon_sections/1.json
  def update
    respond_to do |format|
      if @sermon_section.update(sermon_section_params)
        format.html { redirect_to @sermon_section, notice: 'Sermon section was successfully updated.' }
        format.json { render :show, status: :ok, location: @sermon_section }
      else
        format.html { render :edit }
        format.json { render json: @sermon_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sermon_sections/1
  # DELETE /sermon_sections/1.json
  def destroy
    @sermon_section.destroy
    respond_to do |format|
      format.html { redirect_to sermon_sections_url, notice: 'Sermon section was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sermon_section
      @sermon_section = SermonSection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sermon_section_params
      params.require(:sermon_section).permit(:speaker_note, :personal_note, :sermon_id)
    end
end
