class EntersoftsController < ApplicationController
  before_action :set_entersoft, only: %i[ show edit update destroy ]

  # GET /entersofts or /entersofts.json
  def index
    @entersofts = Entersoft.all
  end

  # GET /entersofts/1 or /entersofts/1.json
  def show
  end

  # GET /entersofts/new
  def new
    @entersoft = Entersoft.new
  end

  # GET /entersofts/1/edit
  def edit
  end

  # POST /entersofts or /entersofts.json
  def create
    @entersoft = Entersoft.new(entersoft_params)

    respond_to do |format|
      if @entersoft.save
        format.html { redirect_to @entersoft, notice: "Entersoft was successfully created." }
        format.json { render :show, status: :created, location: @entersoft }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @entersoft.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entersofts/1 or /entersofts/1.json
  def update
    respond_to do |format|
      if @entersoft.update(entersoft_params)
        format.html { redirect_to @entersoft, notice: "Entersoft was successfully updated." }
        format.json { render :show, status: :ok, location: @entersoft }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @entersoft.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entersofts/1 or /entersofts/1.json
  def destroy
    @entersoft.destroy
    respond_to do |format|
      format.html { redirect_to entersofts_url, notice: "Entersoft was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entersoft
      @entersoft = Entersoft.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def entersoft_params
      params.require(:entersoft).permit(:fullname, :fathername, :email, :mobilenumber, :location, :areureadytorelocate, :btechpercentage)
    end
end
