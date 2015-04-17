describe Item do
  subject { create(:item, rating: 0) }
  describe '#vote_up!' do
    let(:perform) { subject.vote_up! }
    it { expect { perform } .to change { subject.rating }.by(1) }
  end
  describe '#vote_down!' do
    let(:perform) { subject.vote_down! }
    it { expect { perform } .to change { subject.rating }.by(-1) }
  end
end