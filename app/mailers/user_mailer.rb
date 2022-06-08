class UserMailer < ApplicationMailer

  def receipt_email
    #mail(to: params[:order][:email], subject: "Jungle Receipt: Order Number #{params[:order][:id]}")
  end
end
