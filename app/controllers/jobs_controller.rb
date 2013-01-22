class JobsController < ApplicationController

  def index
    @jobs = Job.all
    @title = "Jobs"
  end

  def show
    @job = Job.find(params[:id])
    @title = @job.name
    @back_target = jobs_path
  end

end