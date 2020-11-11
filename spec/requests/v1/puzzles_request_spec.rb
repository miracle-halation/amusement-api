require 'rails_helper'

RSpec.describe "V1::Puzzles", type: :request do
	let!(:shape){FactoryBot.create_list(:shape, 3)}
	let!(:puzzle){FactoryBot.create(:puzzle)}

	describe "Get #index" do
		it "正しくshapeのデータを送信できる" do
			get v1_puzzles_path
			json = JSON.parse(response.body)
			expect(response.status).to eq(200)
			expect(json.length).to eq(4)
		end
	end
	describe "Get #show" do
		it "正しくpuzzleとshapeのデータを送信できる" do
			get v1_puzzle_path(puzzle.id)
			json = JSON.parse(response.body)
			expect(response.status).to eq(200)
		end
	end
end
