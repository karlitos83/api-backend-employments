class WorkDaySerializer < ActiveModel::Serializer
  attributes :id, :entry_at, :departure_at
  belongs_to :user
end
