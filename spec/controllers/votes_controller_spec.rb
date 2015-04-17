describe VotesController do
  let(:item) { create(:item) }

  describe '#create' do
    let(:call_request) { post :create, item_id: item.id }

    it_behaves_like 'an action redirecting to', -> { items_path }
  end

  describe '#destroy' do
    let(:call_request) { post :create, item_id: item.id }

    it_behaves_like 'an action redirecting to', -> { items_path }
  end
end