class CardSpotsController < ApplicationController
  before_action :set_card_spot, only: [:show, :edit, :update, :destroy]

  # GET /card_spots
  # GET /card_spots.json
  def index
    @card_spots = CardSpot.all
  end

  # GET /card_spots/1
  # GET /card_spots/1.json
  def show
  end

  # GET /card_spots/new
  def new
    @card_spot = CardSpot.new
  end

  # GET /card_spots/1/edit
  def edit
  end

  # POST /card_spots
  # POST /card_spots.json
  def create
    @card_spot = CardSpot.new(card_spot_params)

    respond_to do |format|
      if @card_spot.save
        format.html { redirect_to @card_spot, notice: 'Card spot was successfully created.' }
        format.json { render :show, status: :created, location: @card_spot }
      else
        format.html { render :new }
        format.json { render json: @card_spot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /card_spots/1
  # PATCH/PUT /card_spots/1.json
  def update
    respond_to do |format|
      if @card_spot.update(card_spot_params)
        format.html { redirect_to @card_spot, notice: 'Card spot was successfully updated.' }
        format.json { render :show, status: :ok, location: @card_spot }
      else
        format.html { render :edit }
        format.json { render json: @card_spot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /card_spots/1
  # DELETE /card_spots/1.json
  def destroy
    @card_spot.destroy
    respond_to do |format|
      format.html { redirect_to card_spots_url, notice: 'Card spot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card_spot
      @card_spot = CardSpot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def card_spot_params
      params.require(:card_spot).permit(:combo_id, :card_id, :ord)
    end
end
