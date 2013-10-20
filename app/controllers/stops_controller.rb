class StopsController < ApplicationController
  def index

    @stops = Stop.where('name ilike (?)', "%#{params[:q]}%").limit(10)

    respond_to do |format|
      format.html { render :nothing }
      format.json { render json: @stops.map(&:attributes) }
    end

  end
end
