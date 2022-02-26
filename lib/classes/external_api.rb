class ExternalApi
	require 'faraday'

	def initialize
	end

	def connect
	end

	def send params=nil
		return Faraday.get("https://pokeapi.co/api/v2/pokemon?", params)
	end

end