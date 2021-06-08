class ReadNotes

  def read_titles(note)
    note.notes.each do | key, value |
      puts key
    end
  end
end


class AddNote

  attr_reader :title 
  attr_reader :body
  attr_reader :notes

  def initialize
    @title
    @body
    @notes = {}
  end

  def add_note(title, body)
    @notes[title] = body
  end

end