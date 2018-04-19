# == Schema Information
#
# Table name: scoreteachers
#
#  id         :integer          not null, primary key
#  score      :integer
#  votes      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Scoreteacher < ApplicationRecord
  has_one :teacher
end
