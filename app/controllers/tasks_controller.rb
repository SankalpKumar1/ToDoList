class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  def show
    @task = Task.find(params[:id])
  end
  def new
    @task = Task.new
  end
  def create
    @task = Task.new(params.require(:task).permit(
      :name,
      :description,
      :done
    ))
    if @task.save
      redirect_to tasks_path
    else
      render('new')
    end
  end

  def edit
    @task = Task.find(params[:id])
  end
  def update
    @task = Task.find(params[:id])
    @task.update(params.require(:task).permit(
      :name,
      :description,
      :done
      ))
      redirect_to tasks_path
  end
  def delete
    @task = Task.find(params[:id])
  end
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  # home route does nothing
  def all
  end
  
end
