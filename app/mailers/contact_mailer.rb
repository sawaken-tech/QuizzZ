class ContactMailer < ActionMailer::Base

  default from: "example@example.com"   # 送信元アドレス
  default to: "example@example.com"     # 送信先アドレス
 
  def received_email(contact)
    @contact = contact
    mail to: 'quizzz.contact@gmail.com', subject: 'お問い合わせを承りました'
  end

end