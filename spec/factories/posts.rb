FactoryBot.define do
  factory :post do
    text {Faker::Lorem.sentence}
    title {Faker::Lorem.sentence}
    prefecture_id    {Faker::Number.between(from:2, to:48)}
    association :user 
    after(:build) do |post|
      post.images.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
