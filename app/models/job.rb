# == Schema Information
#
# Table name: jobs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  extended   :boolean          default(FALSE)
#  created_at :datetime
#  updated_at :datetime
#

class Job < ActiveRecord::Base
  has_many :characters
end
