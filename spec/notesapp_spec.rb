require 'notesapp'
require 'addnote.rb'

describe NotesApp do

  let(:notebook) { NotesApp.new }
  let(:note1) { double :note_double, title: "Cat", body: "Feed the cat" }

  it 'initializes with an empty notes hash' do
    expect(notebook.notes).to be_empty
  end

  it 'stores a note in notes hash' do
    notebook.store_note(note1)
    expect(notebook.notes).to eq({note1.title => note1.body})
  end


  describe '#read_titles' do
    it { is_expected.to respond_to(:read_titles) }

    it 'shows all titles' do
      notebook.store_note(note1)
      expect(notebook.read_titles).to eq(note1.title)
    end
  end

  describe '#read_note' do
    it { is_expected.to respond_to(:read_note).with(1).argument }

    it 'returns a body' do
      notebook.store_note(note1)
      expect(notebook.read_note(note1.title)).to eq(note1.body)
    end
  end

end
