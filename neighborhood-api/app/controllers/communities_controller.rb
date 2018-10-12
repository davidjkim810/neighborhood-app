class CommunitiesController < ApplicationController

  def new
  end

  def create
  end

  def show
  end

  def index
    @communities = Community.all
    render :json => @communities
  end

  def edit
  end

  def update
  end

  def destroy
  end


end
