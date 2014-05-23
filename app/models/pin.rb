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

class Pin < ActiveRecord::Base
  belongs_to :user
  belongs_to :type

  before_save :default_category

  enum status: [:inactive, :pending, :active] unless instance_methods.include? :status

  private 

  def default_category
    self.category_id = 1
  end
end
