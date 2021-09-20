require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end

  describe '投稿の保存' do
    context '投稿できる時' do
      it 'title,image,text,prefectureが存在すれば登録できる' do
        expect(@post).to be_valid
      end
    end
    context '投稿できない時' do
      it '画像が存在していない時' do
        @post.images = nil
        @post.valid?
        expect(@post.errors.full_messages).to include "Imagesを入力してください"
      end
      it 'タイトルが空の時' do
        @post.title = ''
        @post.valid?
        expect(@post.errors.full_messages).to include "Titleを入力してください"
      end
      it 'テキストが空のとき' do
        @post.text =''
        @post.valid?
        expect(@post.errors.full_messages).to include "Textを入力してください"
      end
      it '都道府県を選択していない時' do
        @post.prefecture_id = '1'
        @post.valid?
        expect(@post.errors.full_messages).to include "Prefecturecan't be blank"
      end
      it 'userが紐付いていなければ登録できない' do
        @post.user = nil
        @post.valid?
        expect(@post.errors.full_messages).to include "Userを入力してください"
      end
    end
  end
end
