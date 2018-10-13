module Api
  module V1
      class ItemsController < ApplicationController

      def index
        if params[:user_id]
          user = User.find(params[:user_id])
          render json: {status: 'SUCCESS', message:"Loaded #{user.nickname}'s items", data: user.items}, status: :ok
        elsif params[:community_id]
          neighborhood = Neighborhood.find(params[:neighborhood_id])
          neighborhood_items = neighborhood.users.collect do |user|
            user.items
          end
          render json: {status: 'SUCCESS', message:"Loaded all items in the #{neighborhood.name} neighborhood", data: neighborhood_items}, status: :ok
        else
        items = Item.all
        render json: {status: 'SUCCESS', message:'Loaded items', data: items}, status: :ok
        end
      end

      def create
        item = Item.new(item_params)
        if item.save
          render json: {status: 'SUCCESS', message:'Saved item', data: item}, status: :ok
        else
          render json: {status: 'ERROR', message:'Item not saved', data: item.errors}, status: :unprocessable_entry
        end
      end

      def show
        item = Item.find(params[:id])
        render json: {status: 'SUCCESS', message:'Saved item', data: item}, status: :ok
      end

      def update
        item = Item.find(params[:id])
        if item.update_attributes(item_params)
          render json: {status: 'SUCCESS', message:'Updated item', data: item}, status: :ok
        else
          render json: {status: 'ERROR', message:'Item not updated', data: item.errors}, status: :unprocessable_entry
        end
      end

      def destroy
        item = Item.find(params[:id])
        item.destroy
        render json: {status: 'SUCCESS', message:'Item deleted', data: item}, status: :ok
      end

      private

      def item_params
        params.permit(:user_id, :borrower_id, :img_url, :name, :description)
      end
    end
  end
end
