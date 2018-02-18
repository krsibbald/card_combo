class CombosController < ApplicationController
  before_action :set_combo, only: [:show, :edit, :update, :destroy]

  # GET /combos
  # GET /combos.json
  def index
    page = params[:page] || 1
    @combos = Combo.order(:id).page page
  end

  # GET /combos/1
  # GET /combos/1.json
  def show
  end

  # GET /combos/new
  def new
    @combo = Combo.new
  end

  # GET /combos/1/edit
  def edit
  end

  # POST /combos
  # POST /combos.json
  def create
    @combo = Combo.create(outcome: true)
    card1_id = combo_params[:card1].try(:[], 1)
    if card1_id
      @combo.card_spots.create(card_id: card1_id, ord: 1)
    end

    card2_id = combo_params[:card2].try(:[], 1)
    if card2_id
      @combo.card_spots.create(card_id: card2_id, ord: 2)
    end

    card3_id = combo_params[:card3].try(:[], 1)
    if card3_id
      @combo.card_spots.create(card_id: card3_id, ord: 3)
    end

    card4_id = combo_params[:card4].try(:[], 1)
    if card4_id
      @combo.card_spots.create(card_id: card4_id, ord: 4)
    end

    card5_id = combo_params[:card5].try(:[], 1)
    if card5_id
      @combo.card_spots.create(card_id: card5_id, ord: 5)
    end

    respond_to do |format|
      if @combo.save
        format.html {redirect_to new_combo_path, notice: 'Combo was successfully created.'}
        format.json { render :show, status: :created, location: @combo }
      else
        format.html { render :new }
        format.json { render json: @combo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /combos/1
  # PATCH/PUT /combos/1.json
  def update
    respond_to do |format|
      if @combo.update(combo_params)
        format.html { redirect_to @combo, notice: 'Combo was successfully updated.' }
        format.json { render :show, status: :ok, location: @combo }
      else
        format.html { render :edit }
        format.json { render json: @combo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /combos/1
  # DELETE /combos/1.json
  def destroy
    @combo.destroy
    respond_to do |format|
      format.html { redirect_to combos_url, notice: 'Combo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def export
    @export_text = Combo.export_as_hash.to_s.gsub('=>', ': ')
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_combo
      @combo = Combo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def combo_params
      params.require(:combo).permit(:outcome, :card_spots_count, card1: [], card2: [], card3: [], card4: [], card5:[])
    end
end
