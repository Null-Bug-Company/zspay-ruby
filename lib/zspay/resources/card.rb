# frozen_string_literal: true

module Zspay
  class Card < Zspay::Resource
    class << self
      def index(client_id)
        get("/clientes/#{client_id}/cartoes")
      end

      def create(client_id, card)
        post("/clientes/#{client_id}/cartoes", card)
      end
    end
  end
end

