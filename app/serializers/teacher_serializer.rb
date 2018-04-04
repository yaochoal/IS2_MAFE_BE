# == Schema Information
#
# Table name: teachers
#
#  id              :integer          not null, primary key
#  name            :string
#  description     :string
#  scoreteacher_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class TeacherSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :scoreteacher_id
end
