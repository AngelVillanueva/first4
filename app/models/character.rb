# == Schema Information
#
# Table name: characters
#
#  id           :integer          not null, primary key
#  gender       :string(255)
#  name         :string(255)
#  age          :integer
#  fuerza       :integer
#  constitucion :integer
#  tamano       :integer
#  destreza     :integer
#  apariencia   :integer
#  inteligencia :integer
#  poder        :integer
#  educacion    :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class Character < ActiveRecord::Base
  belongs_to :job
end
