# == Schema Information
#
# Table name: vertical_shaft_impact_crushers
#
#  id              :integer          not null, primary key
#  drive_diameter  :decimal(, )
#  driven_diameter :decimal(, )
#  motor_rpm       :decimal(, )
#  rotor_diameter  :decimal(, )
#  created_at      :datetime
#  updated_at      :datetime
#  column_name     :string(255)
#  name            :string(255)
#  location_id     :integer
#

class VerticalShaftImpactCrusher < ActiveRecord::Base

	belongs_to :location

	validates_presence_of :name
	validates_numericality_of :drive_diameter, minimum: 1, too_short: 'This value can not be left empty'

	def sheave_ratio
		self.driven_diameter / self.drive_diameter
	end

	def calculated_shaft_rpm
		self.motor_rpm / sheave_ratio
	end

	def calculated_tip_speed
		(self.rotor_diameter * 3.14 / 12) * calculated_shaft_rpm
	end

end
