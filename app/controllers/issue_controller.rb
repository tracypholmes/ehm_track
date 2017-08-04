class IssueController < ApplicationController
  before_action :authenticate_user!

  def index
    @issues = Issue.all
  end

  def new
    @issue = Issue.new
  end

  def create
    @issue = Issue.new(issue_params)
    if @issue.save
      redirect_to @issue
    else
      render :new
    end
  end

  def show
    @issue = Issue.find_by(id: params[:id])
  end

  private

  def issue_params
    params.require(:issue).permit(:issue_name, :date_started)
  end
end
