# == Schema Information
#
# Table name: characters
#
#  id            :integer          not null, primary key
#  gender        :string(255)
#  name          :string(255)
#  age           :integer
#  fuerza        :integer
#  constitucion  :integer
#  tamano        :integer
#  destreza      :integer
#  apariencia    :integer
#  inteligencia  :integer
#  poder         :integer
#  educacion     :integer
#  created_at    :datetime
#  updated_at    :datetime
#  profession_id :integer
#

class Character < ActiveRecord::Base
  belongs_to :profession
  has_many :skill_levels
  has_many :skills, through: :skill_levels

  before_create :assign_skills

  private
  def assign_skills
    self.skills = Skill.all
  end
end
