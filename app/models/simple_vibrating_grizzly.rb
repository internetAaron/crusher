# == Schema Information
#
# Table name: simple_vibrating_grizzlies
#
#  id              :integer          not null, primary key
#  nominal_opening :decimal(, )
#  grizzly_width   :decimal(, )
#  grizzly_length  :decimal(, )
#  created_at      :datetime
#  updated_at      :datetime
#  column_name     :string(255)
#  location_id     :integer
#

class SimpleVibratingGrizzly < ActiveRecord::Base

	belongs_to :location

	def sq_ft_grizz_section
		self.grizzly_width * self.grizzly_length/144
	end

	def approximate_tph
		5 * self.nominal_opening * sq_ft_grizz_section
	end
end
