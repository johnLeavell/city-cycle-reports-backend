class ReportSerializer < ActiveModel::Serializer
  belongs_to :user

  attributes :id, :title, :content, :location, :time, :date, :img_src
end
