class SawLogsReceiptsController < ApplicationController
  before_action :set_saw_logs_receipt, only: [:show, :edit, :update, :destroy]

  # GET /saw_logs_receipts
  # GET /saw_logs_receipts.json
  def index
    @saw_logs_receipts = SawLogsReceipt.all
  end

  # GET /saw_logs_receipts/1
  # GET /saw_logs_receipts/1.json
  def show
  end

  # GET /saw_logs_receipts/new
  def new
    @saw_logs_receipt = SawLogsReceipt.new
  end

  # GET /saw_logs_receipts/1/edit
  def edit
  end

  # POST /saw_logs_receipts
  # POST /saw_logs_receipts.json
  def create
    @saw_logs_receipt = SawLogsReceipt.new(saw_logs_receipt_params)

    respond_to do |format|
      if @saw_logs_receipt.save
        format.html { redirect_to @saw_logs_receipt, notice: 'Saw logs receipt was successfully created.' }
        format.json { render action: 'show', status: :created, location: @saw_logs_receipt }
      else
        format.html { render action: 'new' }
        format.json { render json: @saw_logs_receipt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saw_logs_receipts/1
  # PATCH/PUT /saw_logs_receipts/1.json
  def update
    respond_to do |format|
      if @saw_logs_receipt.update(saw_logs_receipt_params)
        format.html { redirect_to @saw_logs_receipt, notice: 'Saw logs receipt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @saw_logs_receipt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saw_logs_receipts/1
  # DELETE /saw_logs_receipts/1.json
  def destroy
    @saw_logs_receipt.destroy
    respond_to do |format|
      format.html { redirect_to saw_logs_receipts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saw_logs_receipt
      @saw_logs_receipt = SawLogsReceipt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def saw_logs_receipt_params
      params.require(:saw_logs_receipt).permit(:ticket_id, :saw_log_class_id, :low_diameter, :high_diameter, :length)
    end
end
