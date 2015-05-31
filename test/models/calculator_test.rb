# == Schema Information
#
# Table name: calculators
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  featured    :boolean
#  category_id :integer
#  description :text
#  picture     :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class CalculatorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
