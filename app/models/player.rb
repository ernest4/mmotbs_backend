# frozen_string_literal: true

class Player < ApplicationRecord
  # https://api.rubyonrails.org/classes/ActiveModel/SecurePassword/ClassMethods.html
  has_secure_password
  # has_secure_password :recovery_password, validations: false

  validates :name, :presence => true, :uniqueness => true
end
