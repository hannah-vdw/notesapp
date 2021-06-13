class NotesApp

  attr_reader :notes

  def initialize
    @notes = {}
  end

  def store_note(note)
    @notes[note.title] = note.body
  end
  
  def read_titles
    @notes.each { |k, v| return k }
  end

  def read_note(title)
    @notes.each { |k,v| return v if title == k }
  end

end
