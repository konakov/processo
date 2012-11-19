class ProcessesController < ApplicationController
  def index
    @processes = Process.all
  end

  def show
    @process = Process.find(params[:id])
  end

  def new
    @process = Process.new
  end

  def create
    @process = Process.new(params[:process])
    if @process.save
      redirect_to @process, :notice => "Successfully created process."
    else
      render :action => 'new'
    end
  end

  def edit
    @process = Process.find(params[:id])
  end

  def update
    @process = Process.find(params[:id])
    if @process.update_attributes(params[:process])
      redirect_to @process, :notice  => "Successfully updated process."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @process = Process.find(params[:id])
    @process.destroy
    redirect_to processes_url, :notice => "Successfully destroyed process."
  end
end
