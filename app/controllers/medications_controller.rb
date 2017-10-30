class MedicationsController < ApplicationController
  def index
    @medications = Medication.all
  end
end
