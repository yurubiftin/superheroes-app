class HeroPowersController < ApplicationController
    def create
        hero_power = HeroPower.create(hero_power_params)
        if hero_power
            render json: hero_power, status: :created
        else
            render json: {error: "hero_power not created"}, status: :unprocessable_entity
        end
    end
    end

    private
    def hero_power_params
        params.permit(:strength, :power_id, :hero_id)
    end

end
