class MedicationsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @medications = current_user.medications.all
  end
end
