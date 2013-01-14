class JobsController < ApplicationController

  def index
    @jobs = Job.all
    @title = "Jobs"  
  end

end