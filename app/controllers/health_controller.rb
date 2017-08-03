class HealthController < ApplicationController
  before_action :authenticate_user!

  def index
    @healths = Health.all
  end

  def new
    @health = Health.new
  end

  def create
    @health = Health.new(health_params)
    if @health.save
      redirect_to @health
    else
      render :new
    end
  end

  def show
    @health = Health.find_by(id: params[:id])
  end

  private

  def health_params
    params.require(:health).permit(:issue_name, :date_started)
  end
end
