class GuestUser
  extend ActiveModel::Callbacks
  include ActiveModel::Validations
  include Devise::Models::TwoFactorAuthenticatable

  define_model_callbacks :create
  attr_accessor :direct_otp, :direct_otp_sent_at, :otp_secret_key, :email,
                :second_factor_attempts_count, :totp_timestamp

  has_one_time_password
end