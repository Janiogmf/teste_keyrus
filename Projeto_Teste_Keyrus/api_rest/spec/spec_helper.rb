require 'httparty'

RSpec.configure do |config|
  config.before(:all) do
    class HttParty
      include HTTParty
      base_uri 'https://viacep.com.br'
    end
  end
end
