FactoryGirl.define do
  factory :item do
    sequence(:title) { |n| "Title #{n}" }
    sequence(:description) { |n| "Description #{n}" }
  end
end