class TasksController < ApplicationController

  before_filter :load_note

  def new
    @task = @note.tasks.build
  end

  def create
    @note.tasks.build(task_params)

    respond_to do |format|
      if @note.save
        format.html { redirect_to root_path, notice: 'Task was successfully created.' }
        format.json { render action: 'show', status: :created, location: @note }
      else
        format.html { render action: 'new' }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def load_note
    @note = Note.find(params[:note_id])
  end

  def task_params
    params.require(:task).permit(:description, :details)
  end
end
