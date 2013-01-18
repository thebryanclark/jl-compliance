class JobsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
    @title = @job.name
    @back_target = '/jobs'
  end

end