class QualityClassesController < ApplicationController
  before_action :set_quality_class, only: [:show, :edit, :update, :destroy]

  # GET /quality_classes
  # GET /quality_classes.json
  def index
    @quality_classes = QualityClass.order(:name).all
  end

  # GET /quality_classes/1
  # GET /quality_classes/1.json
  def show
  end

  # GET /quality_classes/new
  def new
    @quality_class = QualityClass.new
  end

  # GET /quality_classes/1/edit
  def edit
  end

  # POST /quality_classes
  # POST /quality_classes.json
  def create
    @quality_class = QualityClass.new(quality_class_params)

    respond_to do |format|
      if @quality_class.save
        format.html { redirect_to @quality_class, notice: 'Quality class was successfully created.' }
        format.json { render action: 'show', status: :created, location: @quality_class }
      else
        format.html { render action: 'new' }
        format.json { render json: @quality_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quality_classes/1
  # PATCH/PUT /quality_classes/1.json
  def update
    respond_to do |format|
      if @quality_class.update(quality_class_params)
        format.html { redirect_to @quality_class, notice: 'Quality class was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @quality_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quality_classes/1
  # DELETE /quality_classes/1.json
  def destroy
    @quality_class.destroy
    respond_to do |format|
      format.html { redirect_to quality_classes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quality_class
      @quality_class = QualityClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quality_class_params
      params.require(:quality_class).permit(:name)
    end
end
