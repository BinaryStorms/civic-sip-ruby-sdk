# frozen_string_literal: true

require 'binary_storms/civic_sip_sdk'
require 'binary_storms/civic_sip_sdk/client'

RSpec.describe BinaryStorms::CivicSIPSdk do
  it 'should return an instance of the client' do
    expect(BinaryStorms::CivicSIPSdk.new_client('abc', :dev, 'private_key', 'a secret'))
      .to be_a(BinaryStorms::CivicSIPSdk::Client)
  end
end
