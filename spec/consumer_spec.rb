require 'evigilo_api_consumer'

require 'spec_helper'

describe EvigiloApiConsumer::Consumer do
  subject { described_class }
  let(:change_hash) do
    { name: ['Avi', 'NewAvi'] }
  end

  it 'sends a post and receives back a response' do
    json_response = File.read('spec/fixtures/store_response.json')
    subject.should_receive(:query).with("store/users/1/create", :post, { body: { data: change_hash, snapshot: {} }.to_json }).and_return(json_response)
    subject.store('users', 1, 'create', change_hash)
  end

  it 'sends the correct get request for a version' do
    subject.should_receive(:query).with("versions/XXXX")
    subject.get_version("XXXX")
  end

  it 'sends the correct get request for available versions of a particular object' do
    subject.should_receive(:query).with("versions/Restaurant/1234567")
    subject.get_available_versions("Restaurant", "1234567")
  end
end
