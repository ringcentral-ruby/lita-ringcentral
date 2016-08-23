require 'spec_helper'

describe Lita::Adapters::RingCentral, lita: true do
  subject { described_class.new(robot) }

  let(:robot) { Lita::Robot.new(registry) }
  let(:adapter) { instance_double('Lita::Adapters::RingCentral') }
  let(:connection) { instance_double('Lita::Adapters::RingCentral::Connector') }

  let(:ringcentral_app_key) { 'my_app_key' }
  let(:ringcentral_app_secret) { 'my_app_secret' }
  let(:ringcentral_server) { 'https://platform.devtest.ringcentral.com' }
  let(:ringcentral_username) { 'my_username' }
  let(:ringcentral_extension) { 'my_extension' }
  let(:ringcentral_password) { 'my_password' }
  let(:ringcentral_token) { '{
  "access_token": "my_test_access_token_with_refresh",
  "token_type": "bearer",
  "expires_in": 3599,
  "refresh_token": "my_test_refresh_token",
  "refresh_token_expires_in": 604799,
  "scope": "ReadCallLog DirectRingOut EditCallLog ReadAccounts Contacts EditExtensions ReadContacts SMS EditPresence RingOut EditCustomData ReadPresence EditPaymentInfo Interoperability Accounts NumberLookup InternalMessages ReadCallRecording EditAccounts Faxes EditReportingSettings ReadClientInfo EditMessages VoipCalling ReadMessages",
  "owner_id": "1234567890"
      }' }

  before do
    registry.register_adapter(:ringcentral, described_class)
    registry.config.adapters.ringcentral.app_key = ringcentral_app_key
    registry.config.adapters.ringcentral.app_secret = ringcentral_app_secret
    registry.config.adapters.ringcentral.server = ringcentral_server
    registry.config.adapters.ringcentral.username = ringcentral_username
    registry.config.adapters.ringcentral.extension = ringcentral_extension
    registry.config.adapters.ringcentral.password = ringcentral_password
    registry.config.adapters.ringcentral.token = JSON.parse ringcentral_token

    allow(adapter).to receive(:run)
  end

  it "registers with Lita" do
    expect(Lita.adapters[:ringcentral]).to eql(described_class)
  end

  describe "#run" do
    puts "RUNNING"
    stubs = Faraday::Adapter::Test::Stubs.new do |stub|
      stub.get('/restapi/oauth/authorize') { |env| [200, {}, 'egg'] }
    end
    it "starts the connection" do
      expect(adapter).to receive(:run)

      subject.run
    end
  end

  describe "#shut_down" do
    before { allow(adapter).to receive(:shut_down) }

    it "shuts down the connection" do
      expect(adapter).to receive(:shut_down)

      subject.run
      subject.shut_down
    end

    it "triggers a :disconnected event" do
      expect(robot).to receive(:trigger).with(:disconnected)

      subject.run
      subject.shut_down
    end

  end
end