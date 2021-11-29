class NightlyJobMailer < ApplicationMailer
  def email_for_certification_center
    @center = params[:center]
    mail(to: @center.email, subject: 'All licenses have been processed')
  end
end
