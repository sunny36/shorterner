class Api::V1::BaseController < ApplicationController
  protect_from_forgery with: :null_session


  def api_error(status: 500, errors: [])
    head status: status and return if errors.empty?
    render json: errors.to_json, status: status
  end

end
