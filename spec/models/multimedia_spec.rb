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

require 'spec_helper'

describe Multimedia do
  pending "add some examples to (or delete) #{__FILE__}"
end
