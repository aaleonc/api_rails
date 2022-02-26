class Api::V1::ReadingsController < ApplicationController
  skip_before_action :authenticate!, only: :read_pokemon

	def read_pokemon
		params = {limit:10, offset:10}
		ext_api = ExternalApi.new
		response = ext_api.send params
		render json: {response: JSON.parse(response.body)}
	end

end
