# == Schema Information
#
# Table name: professions
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  extended   :boolean          default(FALSE)
#  created_at :datetime
#  updated_at :datetime
#

class Profession < ActiveRecord::Base
  has_many :characters
end
