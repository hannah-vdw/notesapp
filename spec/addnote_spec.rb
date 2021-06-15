require 'addnote.rb'

describe AddNote do

  describe '#add_note' do
   
    let(:new_note) { AddNote.new("Cat", "Feed the cat") }

    it 'on initialize' do
      expect(new_note.title).to eq("Cat")
      expect(new_note.body).to eq("Feed the cat")
    end
  end
  
end
