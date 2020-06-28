class ApiController < ApplicationController
  skip_before_action :verify_authenticity_token

  def rand
    render json: { ramsay: RamSay.rand }
  end

  def add
    Suggestion.create!(content: params.require(:ramsay))
    head :ok
  end
end
