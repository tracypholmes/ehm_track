class IssuesController < ApplicationController
  before_action :authenticate_user!

  def index
    @issues = current_user.issues.all
  end
  
  def show
    @issue = Issue.find_by(id: params[:id])
    if @issue
      if current_user.id != @issue.user_id
        flash[:notice] = "Stop being nosy!!"
        redirect_to issues_path(session[:current_user])
      end
    else
      redirect_to issues_path, notice: "Ghost issue! You don't have that issue, Silly."
    end
  end
  
  def new
    @issue = Issue.new
    @issue.symptoms.build
    @issue.issue_medications.build.build_medication
    # binding.pry
    render :new
  end

  def edit
    @issue = Issue.find(params[:id])
  end
  
  def create
    @issue = Issue.new(issue_params)
    @issue.user = current_user
    if @issue.save
      redirect_to @issue, notice: 'Your issue was successfully created.'
    else
      render :new
    end
  end

  def update
    @issue = Issue.find(params[:id])
    if @issue.update_attributes(issue_params)
      redirect_to @issue
    else
      render :edit
    end
  end

  def destroy
    @issue = Issue.find(params[:id])
    @issue.destroy
    redirect_to issues_path, notice: 'Your issue was successfully deleted.'
  end

  private

  def issue_params
    params.require(:issue).permit(
      :issue_name,
      :date_started,
      :notes,
      symptom_ids: [],
      symptoms_attributes: [:id, :symptom_name, :_destroy], 
      issue_medications_attributes: [:id, :date_med_started, 
        medications_attributes: [:user_id, :medication_name]
      ])
  end
end
