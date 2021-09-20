require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @comment = FactoryBot.build(:comment)
  end

  describe 'コメントの投稿' do
    context 'コメントを投稿できる時' do
      it 'テキストが存在していれば投稿できる' do
        expect(@comment).to be_valid
      end
    end
    context 'コメントが投稿できない時' do
      it 'テキストが存在していない時' do
        @comment.text = ''
        @comment.valid?
        expect(@comment.errors.full_messages).to include "Textを入力してください"
      end
      it 'ユーザーが紐づいていない時' do
        @comment.user = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include "Userを入力してください"
      end
      it '投稿が紐づいていない時' do
        @comment.post = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include "Postを入力してください"
      end
    end
  end
end
