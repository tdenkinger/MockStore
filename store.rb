require "grape"

Dir["./lib/*.rb"].each { |file| require file }

module FakeStore
  class API < Grape::API
    format :json

    get "orders/:transaction_id" do
      Store.get_order params[:transaction_id]
    end

  end
end

