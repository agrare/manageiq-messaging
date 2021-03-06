module ManageIQ
  module Messaging
    class ReceivedMessage
      attr_accessor :sender, :message, :payload, :ack_ref, :client

      def initialize(sender, message, payload, ack_ref, client)
        @sender, @message, @payload, @ack_ref, @client = sender, message, payload, ack_ref, client
      end

      def ack
        client.ack(ack_ref)
      end
    end
  end
end
