# == Schema Information
#
# Table name: skills
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  base       :integer          default(0)
#  created_at :datetime
#  updated_at :datetime
#

class Skill < ActiveRecord::Base
  has_many :skill_levels
  has_many :characters, through: :skill_levels
  has_and_belongs_to_many :professions
end
