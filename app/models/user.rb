class User < ActiveRecord::Base
  EMAIL_REGEXP = /\A\s*(([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})[\s\/,;]*)+\z/i

  validates_presence_of :name, :email, :address, :city, :zip_code, message: "Skal udfyldes"
  validates :email,  format: { with: User::EMAIL_REGEXP,  message: "Ikke gyldig email" }

end
