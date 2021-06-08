require 'notesapp'

# 2. User can see a list of all note titles

describe ReadNotes do

  note1 = AddNote.new
  title = note1.title
  body = note1.body
  note1.add_note(title, body)

  describe '#read_titles' do
    it { is_expected.to respond_to(:read_titles).with(1).argument }

    it 'shows all titles' do
      expect(subject.read_titles(note1)).to include(title)
    end
  end
end


describe AddNote do

  describe '#add_note' do
    # 1. User can add a note with a title and a body
    notes = :notes

    it { is_expected.to respond_to(:add_note).with(2).arguments }

    it 'title and body is included in notes hash' do
      subject.add_note(:title, :body)
      expect(subject.notes).to have_key(:title)
      expect(subject.notes).to have_value(:body)
    end
  end
end
