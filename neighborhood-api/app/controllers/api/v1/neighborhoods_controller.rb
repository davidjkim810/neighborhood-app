module Api
  module V1
    class NeighborhoodsController < ApplicationController

      def create
        neighborhood = Neighborhood.new(name: params[:name], password: params[:password], description: params[:description], img_url: params[:img_url] )
        if neighborhood.save

          render json: {status: 'SUCCESS', message:'Saved neighborhood', data: neighborhood}, status: :ok
        else
          render json: {status: 'ERROR', message:'neighborhood not saved', data: neighborhood.errors}, status: :unprocessable_entry
        end
      end

      def show
        neighborhood = Neighborhood.find(params[:id])
        render json: {status: 'SUCCESS', message:'Loaded neighborhood', data: neighborhood}, status: :ok
      end

      def index
        if params[:user_id]
          user = User.find(params[:user_id])
          render json: {status: 'SUCCESS', message:"Loaded #{user.nickname}'s neighborhoods", data: user.neighborhoods}, status: :ok
        else
          neighborhoods = Neighborhood.all
          render json: {status: 'SUCCESS', message:'Loaded neighborhoods', data: neighborhoods}, status: :ok
        end
      end

      def update
        neighborhood = Neighborhood.find(params[:id])
        if neighborhood.update_attributes(neighborhood_params)
          render json: {status: 'SUCCESS', message:'Updated neighborhood', data: neighborhood}, status: :ok
        else
          render json: {status: 'SUCCESS', message:'neighborhood not updated', data: neighborhood.errors}, status: :unprocessable_entry
        end
      end

      def destroy
        neighborhood = Neighborhood.find(params[:id])
        neighborhood.destroy
        render json: {status: 'SUCCESS', message:'Deleted neighborhood', data: neighborhood}, status: :ok
      end

      private

      def neighborhood_params
        params.permit(:organizer_id, :name, :password, :description, :img_url)
      end
    end
  end
end
