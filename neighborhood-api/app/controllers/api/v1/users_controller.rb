module Api
  module V1
    class UsersController < ApplicationController
      def create
        user = User.new(user_params)
        if user.save
          render json: {status: 'SUCCESS', message:'Saved user', data: user}, status: :ok
        else
          render json: {status: 'ERROR', message:'User not saved', data: user.errors}, status: :unprocessable_entry
        end
      end

      def show
        user = User.find(params[:id])
        render json: {status: 'SUCCESS', message:'Loaded user', data: user}, status: :ok
      end

      def update
        user = User.find(params[:id])
        if user.update_attributes(user_params)
          render json: {status: 'SUCCESS', message:'Updated user', data: user}, status: :ok
        else
          render json: {status: 'SUCCESS', message:'User not updated', data: user.errors}, status: :unprocessable_entry
        end
      end

      def destroy
        user = User.find(params[:id])
        user.destroy
        render json: {status: 'SUCCESS', message:'User deleted', data: user}, status: :ok
      end

      def index
        if params[:community_id]
          neighborhood = Neighborhood.find(params[:neighborhood_id])
          render json: {status: 'SUCCESS', message:'Loaded all users in neighborhood', data: neighborhood.users}, status: :ok
        else
          users = User.all
          render json: {status: 'SUCCESS', message:'Loaded all users', data: users}, status: :ok
        end
      end

      def join
        user = User.find(params[:user_id])
        neighborhood = Neighborhood.find(params[:id])
        user.neighborhoods << neighborhood
        render json: {status: 'SUCCESS', message:"#{user.nickname} successfully joined #{neighborhood.name}"}, status: :ok
      end

      def leave
        user = User.find(params[:user_id])
        neighborhood = Neighborhood.find(params[:id])
        user.neighborhoods.delete(neighborhood)
        render json: {status: 'SUCCESS', message:"#{user.nickname} successfully left #{neighborhood.name}"}, status: :ok
      end

      private

      def user_params
        params.permit(:username, :password, :first_name, :last_name, :nickname, :description, :img_url, :phone_number, :street, :city, :state, :zip_code)
      end
    end
  end
end
