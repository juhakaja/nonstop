module NotesHelper

  def note_done(note_date)
    if note_date < Date.today
    	"Done"
    elsif note_date == Date.today
      "Today"
    else
    	"Todo"
    end
  end

  def indicator_switch(indicator)
    indicator ? "ok" : "not_ok"
  end
end
