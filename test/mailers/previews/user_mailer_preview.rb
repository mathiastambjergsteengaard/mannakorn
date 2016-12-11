# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def order_confirmation
    UserMailer.order_confirmation(User.first, Order.find(27))
  end
end
