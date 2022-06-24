class ApplicationController < ActionController::API
  # before_action :check_headers

  private

  def check_headers
    binding.pry
    if request.headers['Authenticate'] == 'password'
      return true
    else
      render json: { errors: ['Not Authenticated'] }, status: :unauthorized
    end
  end
end
