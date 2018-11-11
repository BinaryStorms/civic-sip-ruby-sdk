# frozen_string_literal: true

module BinaryStorms
  module CivicSIPSdk
    class AppConfig
      attr_reader :id, :env, :private_key, :secret

      VALID_ENVS = %i[dev prod].freeze
      REQUIRED_KEYS = [
        { name: :id, error: 'Civic application id is missing!' },
        { name: :private_key, error: 'Civic application private signing key is missing!' },
        { name: :secret, error: 'Civic application secret is missing!' }
      ].freeze

      # Creates a new instance of <tt>BinaryStorms::CivicSIPSdk::AppConfig</tt>.
      # This is used to configure the SDK connection parameters to the Civic SIP service.
      #
      # It raises an ArgumentError if any argument is nil.
      #
      # Args:
      #   * <tt>id</tt> - The application id.
      #   * <tt>env</tt> - The application environment. Defaults to +:prod+ if the value is incorrect.
      #   * <tt>private_key</tt> - The application's private signing key.
      #   * <tt>secret</tt> - The application secret
      def initialize(id:, env:, private_key:, secret:)
        @id = id
        @env = VALID_ENVS.include?(env.to_sym) ? env.to_sym : VALID_ENVS.last
        @private_key = private_key
        @secret = secret

        validate
      end

      private

      def validate
        validation_errors = REQUIRED_KEYS.map { |rk| instance_variable_get("@#{rk[:name]}").nil? ? rk[:error] : nil}
                                         .compact

        raise ArgumentError.new(validation_errors.join("\n")) unless validation_errors.empty?
      end
    end
  end
end
