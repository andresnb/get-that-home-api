class PropertiesController < ApplicationController
  skip_before_action :require_login!

  def index
    render json: %w[prop1 prop2], status: :ok
  end
end
