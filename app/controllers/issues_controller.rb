class IssuesController < ApplicationController
  before_action :authenticate_user!

  def index
    @issues = Issue.all
  end

  def show
    @issue = Issue.find_by(id: params[:id])
  end

  def new
    @issue = Issue.new
    render :new
  end

  def create
    @issue = Issue.new(issue_params)
    @issue.user = current_user
    if @issue.save
      redirect_to @issue
    else
      render :new
    end
  end

  def edit
    @issue = Issue.find(params[:id])
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
    redirect_to issues_path
  end

  private

  def issue_params
    params.require(:issue).permit(:issue_name, :date_started)
  end
end
