require 'addnote'

describe AddNote do

let(:new_note) { AddNote.new("Cat", "Feed the cat") }
let(:notebook)  { NotesApp.new }

# 1. User can add a note with a title and a body
it 'creates a note with a title and body' do
  expect { new_note }.not_to raise_error 
end

# 2. User can see a list of all note titles
it 'shows all titles' do
  notebook.store_note(new_note)
  expect { notebook.read_titles }.not_to raise_error
end

# # 3. User can pick a note and see its title and body
it 'shows body of note when title is selected' do
  notebook.store_note(new_note)
  expect { notebook.read_note }.not_to raise_error
end

end
