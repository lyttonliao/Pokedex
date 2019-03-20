class Api::PokemonController < ApplicationController
    def index
        @pokemon = Pokemon.all
        # debugger 
        render :index
    end

    def show
        @pokemon = Pokemon.includes(:items).find_by(id: params[:id])
        render :show
    end
end