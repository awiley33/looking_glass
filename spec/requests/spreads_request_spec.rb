require 'rails_helper'

RSpec.describe "Spreads Endpoints", type: :request do
  it "selects a one card spread" do
    get "/api/v0/spreads/one_card"
    expect(response).to be_successful
    expect(response).to have_http_status(200)

    spread = JSON.parse(response.body, symbolize_names: true)
    expect(spread).to be_an(Array)
    expect(spread.count).to eq(1)
    expect(spread.first).to be_a(Hash)

    card = spread.first
    expect(card).to have_key(:id)
    expect(card[:id]).to be_an(Integer)
    
    expect(card).to have_key(:name)
    expect(card[:name]).to be_a(String)

    expect(card).to have_key(:summary)
    expect(card[:summary]).to be_a(String)

    expect(card).to have_key(:full_meaning)
    expect(card[:full_meaning]).to be_a(String)
    
    expect(card).to have_key(:image)
    expect(card[:image]).to be_a(String)

    expect(card).to have_key(:upright)
    expect(card[:upright]).to be_a(String)

    expect(card).to have_key(:reversed)
    expect(card[:reversed]).to be_a(String)
  end

  it "selects a three card spread" do
    get "/api/v0/spreads/three_card"
    expect(response).to be_successful
    expect(response).to have_http_status(200)

    spread = JSON.parse(response.body, symbolize_names: true)
    expect(spread).to be_an(Array)
    expect(spread.count).to eq(3)
    expect(spread.first).to be_a(Hash)

    card = spread.first
    expect(card).to have_key(:id)
    expect(card[:id]).to be_an(Integer)
    
    expect(card).to have_key(:name)
    expect(card[:name]).to be_a(String)

    expect(card).to have_key(:summary)
    expect(card[:summary]).to be_a(String)

    expect(card).to have_key(:full_meaning)
    expect(card[:full_meaning]).to be_a(String)
    
    expect(card).to have_key(:image)
    expect(card[:image]).to be_a(String)

    expect(card).to have_key(:upright)
    expect(card[:upright]).to be_a(String)

    expect(card).to have_key(:reversed)
    expect(card[:reversed]).to be_a(String)
  end
end