class AnimalsController < ApplicationController

    def index
        @animals = Animal.all
    end

    def new
        @animal = Animal.new
    end

    def create
        Animal.create(animal_params)
        redirect_to root_path
    end

    private

    def animal_params
        params.require(:animal).permit(:name, :description)
    end

end
