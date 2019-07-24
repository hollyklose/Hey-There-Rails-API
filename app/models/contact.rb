class Contact < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'

  validates :frequency, :numericality => { :greater_than => 0, :less_than_or_equal_to => 730 }
  validates :priority, :numericality => { :greater_than => 0, :less_than_or_equal_to => 100 }
end
