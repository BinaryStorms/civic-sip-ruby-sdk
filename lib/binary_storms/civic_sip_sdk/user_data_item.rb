# frozen_string_literal: true

module BinaryStorms
  module CivicSIPSdk
    class UserDataItem
      attr_reader :label, :value, :is_valid, :is_owner

      def initialize(label:, value:, is_valid:, is_owner:)
        @label = label
        @value = value
        @is_valid = is_valid
        @is_owner = is_owner
      end
    end
  end
end
