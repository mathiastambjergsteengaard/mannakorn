class UserMailer < ApplicationMailer
  def order_confirmation(user, order)
      @user = user
      @order = order
      mail(to: @user.email, subject: "Ordrebekræftigelse")
    end
end
