require 'notesapp'
require 'addnote.rb'

describe NotesApp do

  let(:notebook) { NotesApp.new }
  let(:note1) { AddNote.new("Cat", "Feed the cat") }

  it 'initializes with an empty notes hash' do
    expect(notebook.notes).to be_empty
  end

  it 'stores a note in notes hash' do
    notebook.store_note(note1)
    expect(notebook.notes).to eq({"Cat" => "Feed the cat"})
  end

  # 2. User can see a list of all note titles
  describe '#read_titles' do
    it { is_expected.to respond_to(:read_titles) }

    it 'shows all titles' do
      notebook.store_note(note1)
      expect(notebook.read_titles).to eq(note1.title)
    end
  end

  # # 3. User can pick a note and see its title and body
  describe '#read_note' do
    it { is_expected.to respond_to(:read_note).with(1).argument }

    it 'returns a body' do
      notebook.store_note(note1)
      expect(notebook.read_note("Cat")).to eq("Feed the cat")
    end
  end

end
