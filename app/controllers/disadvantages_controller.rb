class DisadvantagesController < ApplicationController
  include Kaminari::PageScopeMethods
  before_action :set_disadvantage, only: %i[ show edit update destroy ]

  # GET /disadvantages or /disadvantages.json
  def index
    @disadvantages = Disadvantage.all
    @disadvantages = if params[:search]
      Disadvantage.where("disadvantage LIKE ?", "%#{params[:search]}%")
    else
      Disadvantage.all
    end.page(params[:page]).per(5)
  end

  # GET /disadvantages/1 or /disadvantages/1.json
  def show
  end

  # GET /disadvantages/new
  def new
    @disadvantage = Disadvantage.new
  end

  # GET /disadvantages/1/edit
  def edit
  end

  # POST /disadvantages or /disadvantages.json
  def create
    @disadvantage = Disadvantage.new(disadvantage_params)

    respond_to do |format|
      if @disadvantage.save
        format.html { redirect_to disadvantage_url(@disadvantage), notice: "Disadvantage was successfully created." }
        format.json { render :show, status: :created, location: @disadvantage }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @disadvantage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disadvantages/1 or /disadvantages/1.json
  def update
    respond_to do |format|
      if @disadvantage.update(disadvantage_params)
        format.html { redirect_to disadvantage_url(@disadvantage), notice: "Disadvantage was successfully updated." }
        format.json { render :show, status: :ok, location: @disadvantage }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @disadvantage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disadvantages/1 or /disadvantages/1.json
  def destroy
    @disadvantage.destroy!

    respond_to do |format|
      format.html { redirect_to disadvantages_url, notice: "Disadvantage was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disadvantage
      @disadvantage = Disadvantage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def disadvantage_params
      params.require(:disadvantage).permit(:disadvantage, :description, :cost, :self_control, :character_id)
    end
end
