require 'rails_helper'

RSpec.describe User, type: :model do

  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context 'ユーザー登録できる場合' do
      it 'nickname,email,password,password_confirmationが存在すれば登録できる' do
        expect(@user).to be_valid
      end
    end
    context 'ユーザー登録できない場合' do
      it 'nicknameが空では登録できない' do
        @user.nickname=''
        @user.valid?
        expect(@user.errors.full_messages).to include "Nicknameを入力してください"
      end
      it 'emailが空では登録できない' do
        @user.email =''
        @user.valid?
        expect(@user.errors.full_messages).to include "Eメールを入力してください"
      end
      it 'passwordが空では登録できない' do
        @user.password =''
        @user.valid?
        expect(@user.errors.full_messages).to include "パスワードを入力してください"
      end
      it 'passwordとpassword_confirmationが不一致では登録できない' do
        @user.password_confirmation =''
        @user.valid?
        expect(@user.errors.full_messages).to include "パスワード（確認用）とパスワードの入力が一致しません"
      end
      it '重複したemailが存在する場合登録できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include "Eメールはすでに存在します"
      end
      it 'passwordが5文字以下の時、登録できない' do
        @user.password ='00000'
        @user.password_confirmation ='00000'
        @user.valid?
        expect(@user.errors.full_messages).to include "パスワードは6文字以上で入力してください"
      end
    end
  end
end
