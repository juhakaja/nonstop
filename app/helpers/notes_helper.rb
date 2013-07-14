module NotesHelper

  def note_done(note_date)
    note_date < Date.today ? "Done" : "Todo"
  end

  def indicator_switch(indicator)
    indicator ? "x" : "-"
  end
end
