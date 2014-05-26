#encoding:utf-8
class ThicknessesController < ApplicationController
  before_action :set_thickness, only: [:show, :edit, :update, :destroy]
  before_filter :require_user
  # GET /thicknesses
  # GET /thicknesses.json
  def index
    @thicknesses = Thickness.order(:name).all
  end

  # GET /thicknesses/1
  # GET /thicknesses/1.json
  def show
  end

  # GET /thicknesses/new
  def new
    @thickness = Thickness.new
  end

  # GET /thicknesses/1/edit
  def edit
  end

  # POST /thicknesses
  # POST /thicknesses.json
  def create
    @thickness = Thickness.new(thickness_params)

    respond_to do |format|
      if @thickness.save
        format.html { redirect_to @thickness, notice: 'Thickness was successfully created.' }
        format.json { render action: 'show', status: :created, location: @thickness }
      else
        format.html { render action: 'new' }
        format.json { render json: @thickness.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thicknesses/1
  # PATCH/PUT /thicknesses/1.json
  def update
    respond_to do |format|
      if @thickness.update(thickness_params)
        format.html { redirect_to @thickness, notice: 'Thickness was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @thickness.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thicknesses/1
  # DELETE /thicknesses/1.json
  def destroy
    @thickness.destroy
    respond_to do |format|
      format.html { redirect_to thicknesses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thickness
      @thickness = Thickness.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thickness_params
      params.require(:thickness).permit(:name, :inches, :milimiter, :dimension_id, :reference_code)
    end
end
