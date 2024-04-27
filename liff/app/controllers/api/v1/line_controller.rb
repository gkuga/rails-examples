class Api::V1::LineController < ActionController::API
  def configuration
    render json: { liff_id: Rails.application.credentials.line.liff_id }
  end
end
