class Api::V1::MelodiesController < ApplicationController
  
    def index
        melodies = Melody.all
        render json: MelodySerializer.new(melodies)
    end

    def create
        melody = Melody.new(melody_params)
        if melody.save
            render json: MelodySerializer.new(melody), status: :accepted
          else
            render json: { errors: melody.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def show
        melody = Melody.find(params[:id])
        render json: MelodySerializer.new(melody)
    end

    def destroy
        melody = Melody.find(params[:id])
        melody.destroy
    end

    private

    def melody_params
        params.require(:melody).permit(:title, :notes, :key, :user_id)
    end
end
