class IndexController < ApplicationController
  def index
    @notes = Note.all
  end
end
