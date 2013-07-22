class TasksController < ApplicationController

  before_filter :load_note

  respond_to :html, :js

  def index
    @tasks = Task.all
  end

  def new
    @task = @note.tasks.build
    respond_with(@task)
  end

  def create
    @task = @note.tasks.build(task_params)
    respond_with(@task) if @note.save
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_path, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def flash_destroy
    @task = Task.find(params[:id])
    @task.destroy
    respond_with(@task)
  end

  def toggle_indicator
    @task = Task.find(params[:id])
    @task.toggle!(:indicator)  
    respond_with(@task)
  end

  private

  def load_note
    @note = Note.find(params[:note_id]) unless params[:note_id].nil?
  end

  def task_params
    params.require(:task).permit(:description, :details)
  end
end
