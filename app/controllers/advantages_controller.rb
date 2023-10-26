class AdvantagesController < ApplicationController
  include Kaminari::PageScopeMethods
  before_action :set_advantage, only: %i[ show edit update destroy ]

  # GET /advantages or /advantages.json
  def index
    @advantages = Advantage.all
    @advantages = if params[:search]
      Advantage.where("advantage LIKE ?", "%#{params[:search]}%")
    else
      Advantage.all
    end.page(params[:page]).per(5)
  end

  # GET /advantages/1 or /advantages/1.json
  def show
  end

  # GET /advantages/new
  def new
    @advantage = Advantage.new
  end

  # GET /advantages/1/edit
  def edit
  end

  # POST /advantages or /advantages.json
  def create
    @advantage = Advantage.new(advantage_params)

    respond_to do |format|
      if @advantage.save
        format.html { redirect_to advantage_url(@advantage), notice: "Advantage was successfully created." }
        format.json { render :show, status: :created, location: @advantage }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @advantage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /advantages/1 or /advantages/1.json
  def update
    respond_to do |format|
      if @advantage.update(advantage_params)
        format.html { redirect_to advantage_url(@advantage), notice: "Advantage was successfully updated." }
        format.json { render :show, status: :ok, location: @advantage }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @advantage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /advantages/1 or /advantages/1.json
  def destroy
    @advantage.destroy!

    respond_to do |format|
      format.html { redirect_to advantages_url, notice: "Advantage was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advantage
      @advantage = Advantage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def advantage_params
      params.require(:advantage).permit(:advantage, :description, :cost, :character_id)
    end
end
