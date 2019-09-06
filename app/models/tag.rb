class Tag < ApplicationRecord
  belongs_to :user
  has_many :tag_instances, dependent: :destroy

  enum genre: {
    location: 'location',
    company: 'company',
    school: 'school',
    hobby: 'hobby',
    event: 'event',
    custom: 'custom'
  }
end
