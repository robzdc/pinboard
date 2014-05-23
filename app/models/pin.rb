class Pin < ActiveRecord::Base
  belongs_to :user
  belongs_to :type

  before_save :default_category

  enum status: [:inactive, :pending, :active]

  private 

  def default_category
    self.category_id = 1
  end
end
