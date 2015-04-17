describe ItemsController do
  let(:item) { create(:item) }
  describe '#index' do
    let(:call_request) { get :index }

    it_behaves_like 'an action rendering view'
  end

  describe '#create' do
    let(:attributes) { attributes_for(:item) }
    let(:call_request) { post :create, item: attributes }

    it_behaves_like 'an action creating object'
  end

  describe '#update' do
    let(:item) { create(:item) }
    let(:attributes) { attributes_for(:item) }
    let(:call_request) { post :update, id: item.id, item: attributes }

    it_behaves_like 'an action updating object'
  end

  describe '#destroy' do
    let(:item) { create(:item) }
    let(:call_request) { delete :destroy, id: item.id }

    it_behaves_like 'an action destroying object'
  end
end