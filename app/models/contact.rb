class Contact < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'

  has_many :tag_instances, dependent: :destroy

  validates :frequency, :numericality => { :greater_than => 0, :less_than_or_equal_to => 730 }
  validates :priority, :numericality => { :greater_than => 0, :less_than_or_equal_to => 100 }
end
