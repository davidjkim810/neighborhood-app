module Api
  module V1
    class CommunitiesController < ApplicationController

      def create
        community = Community.new(community_params)
        if community.save
          render json: {status: 'SUCCESS', message:'Saved community', data: community}, status: :ok
        else
          render json: {status: 'ERROR', message:'Community not saved', data: community.errors}, status: :unprocessable_entry
        end
      end

      def show
        community = Community.find(params[:id])
        render json: {status: 'SUCCESS', message:'Loaded community', data: community}, status: :ok
      end

      def index
        communities = Community.all
        render json: {status: 'SUCCESS', message:'Loaded Communities', data: communities}, status: :ok
      end

      def update
        community = Community.find(params[:id])
        if community.update_attributes(community_params)
          render json: {status: 'SUCCESS', message:'Updated community', data: community}, status: :ok
        else
          render json: {status: 'SUCCESS', message:'Community not updated', data: community}, status: :unprocessable_entry
        end
      end

      def destroy
        community = Community.find(params[:id])
        community.destroy
        render json: {status: 'SUCCESS', message:'Deleted community', data: community}, status: :ok
      end

      private

      def community_params
        params.permit(:organizer_id, :name, :password, :description, :img_url)
      end
    end
  end
end
