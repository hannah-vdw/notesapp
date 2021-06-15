require 'addnote.rb'

describe AddNote do

  describe '#add_note' do
   
  # UNSURE if this amount of hardcoding is acceptable because it's for the class we're testing
    let(:new_note) { AddNote.new("Cat", "Feed the cat") }

    it 'on initialize' do
      expect(new_note.title).to eq("Cat")
      expect(new_note.body).to eq("Feed the cat")
    end
  end
  
end