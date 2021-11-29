namespace :license do
  desc "Processes pending licenses and notifies via email"
  task process_pending_licenses: :environment do
    # Send license email to license holders
    License.unprocessed.each do |license|
      LicenseMailer.with(license: license).license_email.deliver_later
    end

    # Notify certification centers
    certification_center_ids = License.unprocessed.pluck(:certification_center_id)
    CertificationCenter.where(id: certification_center_ids).each do |center|
      NightlyJobMailer.with(center: center).email_for_certification_center.deliver_later
    end

    # Mark processed licenses
    License.unprocessed.update_all(processed_at: Time.now)
  end
end
