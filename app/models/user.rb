# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :contacts, dependent: :destroy
  has_many :tags, dependent: :destroy
end
