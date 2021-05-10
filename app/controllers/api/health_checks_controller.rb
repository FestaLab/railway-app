# frozen_string_literal: true

class Api::HealthChecksController < ActionController::API
  def show
    head :ok
  end
end
