# == Schema Information
#
# Table name: skill_levels
#
#  id           :integer          not null, primary key
#  character_id :integer
#  skill_id     :integer
#  percent      :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class SkillLevel < ActiveRecord::Base
  belongs_to :character
  belongs_to :skill

  before_save :assign_default_if_nil

  private
  def assign_default_if_nil
    self.percent = self.skill.base if self.percent.nil?
  end
end
