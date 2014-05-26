class FramingSawsController < ApplicationController
  before_action :set_framing_saw, only: [:show, :edit, :update, :destroy]
  before_filter :require_user
  # GET /framing_saws
  # GET /framing_saws.json
  def index
    @framing_saws = FramingSaw.all
  end

  # GET /framing_saws
  # GET /framing_saws.json
  def fs_daily_report
    @framing_saws = FramingSaw.all
  end

  # GET /framing_saws/1
  # GET /framing_saws/1.json
  def show
  end

  # GET /framing_saws/new
  def new
    current_user = UserSession.find
    id = current_user && current_user.record.id
    @framing_saw = FramingSaw.new

  end

  # GET /framing_saws/1/edit
  def edit
  end

  # POST /framing_saws
  # POST /framing_saws.json
  def create
    @framing_saw = FramingSaw.new(framing_saw_params)

    respond_to do |format|
      if @framing_saw.save
        format.html { redirect_to @framing_saw, notice: 'Framing saw was successfully created.' }
        format.json { render action: 'show', status: :created, location: @framing_saw }
      else
        format.html { render action: 'new' }
        format.json { render json: @framing_saw.errors, status: :unprocessable_entity }
      end

    end
  end

  # PATCH/PUT /framing_saws/1
  # PATCH/PUT /framing_saws/1.json
  def update
    respond_to do |format|
      if @framing_saw.update(framing_saw_params)
        format.html { redirect_to @framing_saw, notice: 'Framing saw was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @framing_saw.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /framing_saws/1
  # DELETE /framing_saws/1.json
  def destroy
    @framing_saw.destroy
    respond_to do |format|
      format.html { redirect_to framing_saws_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_framing_saw
      @framing_saw = FramingSaw.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def framing_saw_params
      params.require(:framing_saw).permit(:plant_id, :area_id, :product_id, :quality_id, :dimension_id, :batch, :sheet, :responsible, :thickness_id, :status_id, :cubic_meters)
    end
end
