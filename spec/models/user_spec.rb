require 'rails_helper'

RSpec.describe User, type: :model do
  describe "ユーザー新規登録" do
    let(:user){FactoryBot.build(:user)}

    it "全ての情報が正しいと登録できる" do
      expect(user).to be_valid
    end
    it "nameが空だと登録できない" do
      user.name = nil
      user.valid?
      expect(user.errors.full_messages).to include("Name can't be blank")
    end
    it "emailが空だと登録できない" do
      user.email = nil
      user.valid?
      expect(user.errors.full_messages).to include("Email can't be blank")
    end
    it "emailに@が無いと登録できない" do
      user.email = 'example.com'
      user.valid?
      expect(user.errors.full_messages).to include('Email is invalid. Input @ character.')
    end
    it "passwordが空だと登録できない" do
      user.password = nil
      user.valid?
      expect(user.errors.full_messages).to include("Password can't be blank")
    end
    it "passwordが半角英数字混合でないと登録できない" do
      user.password = '山田太郎'
      user.valid?
      expect(user.errors.full_messages).to include('Password is invalid. Input half-width characters.')
    end
    it "uidが空だと登録できない" do
      user.uid = nil
      user.valid?
      expect(user.errors.full_messages).to include("Uid can't be blank")
    end
    it "adminが空だと登録できない" do
      user.admin = nil
      user.valid?
      expect(user.errors.full_messages).to include("Admin can't be blank")
    end
  end
end
