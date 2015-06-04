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
#  shaft_rpm       :integer
#  tip_speed       :integer
#  created_at      :datetime
#  updated_at      :datetime
#  location_id     :integer
#

class HorizontalShaftImpactCrusher < ActiveRecord::Base

	belongs_to :location

	validates_presence_of :name
	validates_numericality_of :drive_diameter, minimum: 1, too_short: 'This value can not be left empty'

	def sheave_ratio
		self.driven_diameter / self.drive_diameter
	end

	def calculated_shaft_rpm
		self.rpm / sheave_ratio
	end

	def calculated_tip_speed
		(self.roto_diameter * 3.14 / 12) * calculated_shaft_rpm
	end
	
end
