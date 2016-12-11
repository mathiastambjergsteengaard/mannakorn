class AdminMailer < ApplicationMailer
  def new_order(user, order)
    @user = user
    @order = order
    mail(to: @user.email, subject: "Ny ordre")
  end
end
