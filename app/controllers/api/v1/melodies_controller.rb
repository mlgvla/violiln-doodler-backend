class Api::V1::MelodiesController < ApplicationController
  
    def index
        melodies = Melody.all
        render json: MelodySerializer.new(melodies)
    end

    def create
    end

    def show
        melody = Melody.find(params[:id])
        render json: MelodySerializer.new(melody)
    end
end
