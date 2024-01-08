class Api::V0::SpreadsController < ApplicationController
  def one_card
    cards = Card.all
    @card = cards.sample(1)
    render json: @card
  end

  def three_card
    cards = Card.all
    @cards = cards.sample(3)
    render json: @cards
  end
end