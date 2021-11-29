class NightlyJobMailer < ApplicationMailer
  def email_for_certification_center
    @center = params[:center]
    mail(to: @center.email, subject: 'All licenses have been processed')
  end

  def summary_email
    @count = params[:count]
    mail(to: ENV['OWNER_EMAIL'], subject: 'Nightly job summary')
  end
end
