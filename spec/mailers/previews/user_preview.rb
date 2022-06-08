# Preview all emails at http://localhost:3000/rails/mailers/user
class UserPreview < ActionMailer::Preview
  def receipt_email
    mail(to: "jenn.manwell@gmail.com", subject: "Jungle Receipt: Order Number #{params[:order][:id]}")
  end
end
