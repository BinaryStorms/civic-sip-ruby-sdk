# frozen_string_literal: true

$LOAD_PATH.unshift('lib')

require 'binary_storms/civic_sip_sdk/app_config'
require 'binary_storms/civic_sip_sdk/client'

module BinaryStorms
  module CivicSIPSdk
    module_function

    def new_client(id, env, private_key, secret)
      app_config = AppConfig.new(
        id: id,
        env: env,
        private_key: private_key,
        secret: secret
      )

      Client.new(config: app_config)
    end
  end
end
