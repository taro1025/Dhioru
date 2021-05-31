require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:valid_user)
    @valid_password = "Taro1025@"
  end

  context "that valid" do
    it "should be created" do
      @user.password = @user.password_confirmation = @valid_password

      @user.save
      expect(@user).to be_valid
    end
  end

  context 'lack require' do
    it "should not be created" do
      invalid_email = @user
      invalid_email.update_attribute(:email, " ")
      expect(invalid_email).not_to be_valid

      invalid_last_name_kanji = @user
      invalid_last_name_kanji.update_attribute(:last_name_kanji, " ")
      expect(invalid_last_name_kanji).not_to be_valid

      invalid_last_name_kanna = @user
      invalid_last_name_kanna.update_attribute(:last_name_kana, " ")
      expect(invalid_last_name_kanna).not_to be_valid

      invalid_first_name_kanji = @user
      invalid_first_name_kanji.update_attribute(:first_name_kanji, " ")
      expect(invalid_first_name_kanji).not_to be_valid

      invalid_first_name_kana = @user
      invalid_first_name_kana.update_attribute(:first_name_kana, " ")
      expect(invalid_first_name_kana).not_to be_valid


      invalid_phone = @user
      invalid_phone.update_attribute(:phone_number, " ")
      expect(invalid_phone).not_to be_valid


    end
  end
end
