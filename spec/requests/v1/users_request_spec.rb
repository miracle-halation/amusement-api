require 'rails_helper'

RSpec.describe 'V1::Users', type: :request do
  describe 'UserAPI' do
    let!(:user) {FactoryBot.create(:user)}
    describe 'GET #index' do
      it 'uidのクエリパラメータと一致するユーザーを取得する' do
        uid_query = user.uid
        get v1_users_path(uid_query)
        JSON.parse(response.body)
        expect(response.status).to eq(200)
      end
    end
  end
end
