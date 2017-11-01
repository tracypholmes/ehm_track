class MedicationsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @medications = Medication.all
  end
end
