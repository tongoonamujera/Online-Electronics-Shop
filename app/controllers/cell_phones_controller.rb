class CellPhonesController < ApplicationController
  before_action :set_cell_phone, only: %i[ show edit update destroy ]

  # GET /cell_phones or /cell_phones.json
  def index
    @cell_phones = CellPhone.all
  end

  # GET /cell_phones/1 or /cell_phones/1.json
  def show
  end

  # GET /cell_phones/new
  def new
    @cell_phone = CellPhone.new
  end

  # GET /cell_phones/1/edit
  def edit
  end

  # POST /cell_phones or /cell_phones.json
  def create
    @cell_phone = CellPhone.new(cell_phone_params)

    respond_to do |format|
      if @cell_phone.save
        format.html { redirect_to @cell_phone, notice: "Cell phone was successfully created." }
        format.json { render :show, status: :created, location: @cell_phone }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cell_phone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cell_phones/1 or /cell_phones/1.json
  def update
    respond_to do |format|
      if @cell_phone.update(cell_phone_params)
        format.html { redirect_to @cell_phone, notice: "Cell phone was successfully updated." }
        format.json { render :show, status: :ok, location: @cell_phone }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cell_phone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cell_phones/1 or /cell_phones/1.json
  def destroy
    @cell_phone.destroy
    respond_to do |format|
      format.html { redirect_to cell_phones_url, notice: "Cell phone was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cell_phone
      @cell_phone = CellPhone.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cell_phone_params
      params.require(:cell_phone).permit(:CellPhoneName, :Type, :Memory, :Condition, :Location, :Price)
    end
end
