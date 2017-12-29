class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :title, :duration
  belongs_to :user
end
