# frozen_string_literal: true

module CivicSIPSdk
  class UserDataItem
    attr_reader :label, :value, :is_valid, :is_owner

    # Creates an instance of UserDataItem.
    #
    # Args:
    #   * <tt>label</tt> - Descriptive value identifier.
    #   * <tt>value</tt> - Item value of requested user data.
    #   * <tt>is_valid</tt> - Indicates whether or not the data is still considered valid on the blockchain.
    #   * <tt>is_owner</tt> - Civic SIP service challenges the user during scope request approval to ensure
    #                         the user is in control of the private key originally used in the issuance of the data attestation.
    def initialize(label:, value:, is_valid:, is_owner:)
      @label = label
      @value = value
      @is_valid = is_valid
      @is_owner = is_owner
    end
  end
end
