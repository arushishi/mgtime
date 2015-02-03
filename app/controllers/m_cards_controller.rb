class MCardsController < ApplicationController
  before_action :set_m_card, only: [:show, :edit, :update, :destroy]

  # GET /m_cards
  # GET /m_cards.json
  def index
    @m_cards = MCard.all
  end

  # GET /m_cards/1
  # GET /m_cards/1.json
  def show
  end

  # GET /m_cards/new
  def new
    @m_card = MCard.new
  end

  # GET /m_cards/1/edit
  def edit
  end

  # POST /m_cards
  # POST /m_cards.json
  def create
    @m_card = MCard.new(m_card_params)

    respond_to do |format|
      if @m_card.save
        format.html { redirect_to @m_card, notice: 'M card was successfully created.' }
        format.json { render action: 'show', status: :created, location: @m_card }
      else
        format.html { render action: 'new' }
        format.json { render json: @m_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /m_cards/1
  # PATCH/PUT /m_cards/1.json
  def update
    respond_to do |format|
      if @m_card.update(m_card_params)
        format.html { redirect_to @m_card, notice: 'M card was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @m_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m_cards/1
  # DELETE /m_cards/1.json
  def destroy
    @m_card.destroy
    respond_to do |format|
      format.html { redirect_to m_cards_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_m_card
      @m_card = MCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def m_card_params
      params[:m_card]
      params.require(:m_card).permit(:card_identification_code)
    end
end
