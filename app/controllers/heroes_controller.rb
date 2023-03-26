class HeroesController < ApplicationController
    def index
        heroes = Hero.all
        render json: heroes
    end

    def show
        hero = Hero.find(params[:id])
        render json: hero
    end

    private
    def hero_params
       params.permit(:name, :super_name)
    end


end
