# == Schema Information
#
# Table name: types
#
#  id          :integer          not null, primary key
#  name        :string(255)      not null
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Type < ActiveRecord::Base
  has_many :pins
end
