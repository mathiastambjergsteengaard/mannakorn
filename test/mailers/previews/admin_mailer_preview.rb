# Preview all emails at http://localhost:3000/rails/mailers/admin_mailer
class AdminMailerPreview < ActionMailer::Preview
  def new_order
    AdminMailer.new_order(User.first, Order.find(27))
  end
end
