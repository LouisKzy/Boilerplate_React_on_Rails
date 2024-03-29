class UserMailer < ApplicationMailer
  
  def reset_password_instructions(user)
    @user = user
    @reset_password_url = edit_user_password_url(reset_password_token: @user.reset_password_token)

    # Afficher un message dans les logs pour indiquer que la méthode est appelée
    puts "reset_password_instructions method called"

    # Afficher le contenu de l'e-mail dans les logs
    puts render_to_string(template: 'user_mailer/reset_password_instructions')

    mail(to: @user.email, subject: 'Reset your password')
  end

end