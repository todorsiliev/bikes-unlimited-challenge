class LicenseMailer < ApplicationMailer
  def license_email
    @license = params[:license]

    # Might want to extract this into a service object later
    pdf = Prawn::Document.new
    pdf.text "Rider License"
    pdf.text "NAME: #{@license.holder_name}"
    pdf.text "ISSUED AT: #{@license.certification_center.name}"
    pdf.text "ISSUE DATE: #{@license.licensed_at.strftime('%m/%d/%Y')}"

    attachments['license.pdf'] = pdf
    mail(to: @license.holder_email, subject: 'Your Rider License by Bikes Unlimited')
  end
end
