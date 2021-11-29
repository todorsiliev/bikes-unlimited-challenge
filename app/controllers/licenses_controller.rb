class LicensesController < ApplicationController
  def import
    columns = %i[holder_name holder_email licensed_at certification_center_id]
    values = []
    CSV.foreach(params[:file]) do |row|
      # Expects row to be in the following format:
      # [Name, Email]
      values << [row[0], row[1], Time.now, current_user.certification_center_id]
    end
    License.import columns, values
    head :ok
  end
end 
