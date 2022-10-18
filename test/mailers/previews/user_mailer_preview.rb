# Preview all emails at http://03c7d53d09814004ba7e791c46f483dd.vfs.cloud9.us-east-1.amazonaws.com/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://03c7d53d09814004ba7e791c46f483dd.vfs.cloud9.us-east-1.amazonaws.com/rails/mailers/user_mailer/account_activation
  def account_activation
    user = User.first
    user.activation_token = User.new_token
    UserMailer.account_activation(user)
  end

  # Preview this email at http://03c7d53d09814004ba7e791c46f483dd.vfs.cloud9.us-east-1.amazonaws.com/rails/mailers/user_mailer/password_reset
  def password_reset
    user = User.first
    user.reset_token = User.new_token
    UserMailer.password_reset(user)
  end

end
