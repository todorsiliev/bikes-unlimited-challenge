namespace :license do
  desc "Processes pending licenses and notifies via email"
  task process_pending_licenses: :environment do
    License.where(processed_at: nil).each do |license|
      LicenseMailer.with(license: license).license_email.deliver_later
    end
  end
end
