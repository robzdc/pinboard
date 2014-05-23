# == Schema Information
#
# Table name: pins
#
#  id          :integer          not null, primary key
#  title       :string(70)
#  description :text
#  status      :integer          default(2)
#  user_id     :integer          not null
#  category_id :integer          not null
#  created_at  :datetime
#  updated_at  :datetime
#  type_id     :integer          not null
#

require'faker'

FactoryGirl.define do 
  factory :pin do
    title Faker::Lorem.sentences(1)
  end
end
