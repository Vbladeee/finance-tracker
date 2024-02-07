class Stock < ApplicationRecord

    def self.new_lookup(ticker_symbol)
        client = IEX::Api::Client.new(
            publishable_token: Rails.application.credentials.iex_client[:sandbox_api_key],
            secret_token: 'sk_9a62b86ea17a404492ca0efc5dc06ae7',
            endpoint: 'https://cloud.iexapis.com/v1'
            )
        client.price(ticker_symbol)
    end

end
