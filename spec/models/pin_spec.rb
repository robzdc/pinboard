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

require 'spec_helper'

describe Pin do
  pending "add some examples to (or delete) #{__FILE__}"
end
