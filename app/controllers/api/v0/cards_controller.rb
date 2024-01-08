class Api::V0::CardsController < ApplicationController
  def show
    render json: CardSerializer.new(Card.find(params[:id]))
  end

  def index
    render json: CardSerializer.new(Card.all)
  end
end