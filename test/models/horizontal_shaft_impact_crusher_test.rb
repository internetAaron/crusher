# == Schema Information
#
# Table name: horizontal_shaft_impact_crushers
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  drive_diameter  :decimal(10, 2)
#  driven_diameter :decimal(10, 2)
#  rpm             :integer
#  roto_diameter   :integer
#  created_at      :datetime
#  updated_at      :datetime
#  location_id     :integer
#

require 'test_helper'

class HorizontalShaftImpactCrusherTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
