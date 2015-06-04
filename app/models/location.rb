# == Schema Information
#
# Table name: locations
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  supervisor       :string(255)
#  supervisor_email :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#

class Location < ActiveRecord::Base

  has_many :horizontal_shaft_impact_crushers
  has_many :vertical_shaft_impact_crushers
  has_many :simple_vibrating_grizzlies

end
