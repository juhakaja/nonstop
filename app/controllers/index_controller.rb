class IndexController < ApplicationController
  def index
    @notes = Note.order(:date)
  end
end
