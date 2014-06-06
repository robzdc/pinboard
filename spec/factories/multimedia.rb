# == Schema Information
#
# Table name: multimedia
#
#  id                :integer          not null, primary key
#  path              :string(255)
#  caption           :string(130)
#  order             :integer          not null
#  pin_id            :integer          not null
#  created_at        :datetime
#  updated_at        :datetime
#  path_file_name    :string(255)
#  path_content_type :string(255)
#  path_file_size    :integer
#  path_updated_at   :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :multimedium, :class => 'Multimedia' do
    path "MyString"
    caption "MyString"
    order 1
    pin_id 1
  end
end
