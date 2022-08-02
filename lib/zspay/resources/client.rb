# frozen_string_literal: true

module Zspay
  class Client < Zspay::Resource
    class << self
      def create(client)
        post('/clientes', client)
      end

      def find_by_document(document)
        get("/clientes/por_documento/#{document}")
      end

      def create_card(client_id, card)
        post("/clientes/#{client_id}/cartoes", card)
      end

      def destroy(client_id)
        delete("/clientes/#{client_id}/excluir")
      end
    end
  end
end
