class MedicationsController < ApplicationController
  def index
    @medications = Medication.all
  end

  def show
    @medication = Issue.find_by(id: params[:id])
  end
end
