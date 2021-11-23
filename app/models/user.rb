class User < ApplicationRecord
  has_secure_password
  validates :apelido, presence: true, length: {minimum:8, maximum: 20}, uniqueness: {case_sensitive: false}
  validates :password_digest, presence: true, length: {minimum: 6}
  validates :email, presence: true, length: {maximum: 100}, format: { with:  /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}, uniqueness: {case_sensitive: false}
  before_save :set_defaults

  def set_defaults
     self.moderador ||= false
     self.email = email.downcase
  end
end
