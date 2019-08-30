class Tag < ApplicationRecord
  belongs_to :user
  has_many :tag_instances, dependent: :destroy

  validates :name, uniqueness: true

  enum genre: {
    location: 'location',
    company: 'company',
    school: 'school',
    hobby: 'hobby',
    event: 'event',
    custom: 'custom'
  }
end
