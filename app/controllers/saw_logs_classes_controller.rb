#encoding:utf-8
class SawLogsClassesController < ApplicationController
  before_action :set_saw_logs_class, only: [:show, :edit, :update, :destroy]
  before_filter :require_user
  # GET /saw_logs_classes
  # GET /saw_logs_classes.json
  def index
    @saw_logs_classes = SawLogsClass.all
  end

  # GET /saw_logs_classes/1
  # GET /saw_logs_classes/1.json
  def show
  end

  # GET /saw_logs_classes/new
  def new
    @saw_logs_class = SawLogsClass.new
  end

  # GET /saw_logs_classes/1/edit
  def edit
  end

  # POST /saw_logs_classes
  # POST /saw_logs_classes.json
  def create
    @saw_logs_class = SawLogsClass.new(saw_logs_class_params)

    respond_to do |format|
      if @saw_logs_class.save
        format.html { redirect_to @saw_logs_class, notice: 'Saw logs class was successfully created.' }
        format.json { render action: 'show', status: :created, location: @saw_logs_class }
      else
        format.html { render action: 'new' }
        format.json { render json: @saw_logs_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saw_logs_classes/1
  # PATCH/PUT /saw_logs_classes/1.json
  def update
    respond_to do |format|
      if @saw_logs_class.update(saw_logs_class_params)
        format.html { redirect_to @saw_logs_class, notice: 'Saw logs class was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @saw_logs_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saw_logs_classes/1
  # DELETE /saw_logs_classes/1.json
  def destroy
    @saw_logs_class.destroy
    respond_to do |format|
      format.html { redirect_to saw_logs_classes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saw_logs_class
      @saw_logs_class = SawLogsClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def saw_logs_class_params
      params.require(:saw_logs_class).permit(:saw_log_class_value)
    end
end
