class User < ActiveRecord::Base
  devise :database_authenticatable ,:registerable ,:recoverable ,:rememberable ,:trackable ,:validatable
  include Humanizer
  require_human_on :create
  validates :name, :lastname, :address, :dni, :phone_mobile, :phone_home, presence: true
  before_save :default_account


  def default_account
    self.account_number||="TIB"+SecureRandom.random_number(9999999).to_s
  end
end
