class HealthcheckController < ApplicationController
  def index
    render plain: "ok"
  end
end