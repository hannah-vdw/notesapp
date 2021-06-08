require 'notesapp'


describe ReadNotes do

  # describe '#add_note' do
  #   it { is_expected.to respond_to(:add_note) }
  # end


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


# 1. User can add a note with a title and a body