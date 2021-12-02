class ScenesController < ApplicationController
  def new
    @scene = Scene.new
  end

  def create
    @scene = Scene.new(scene_params)
    @scene.user = current_user
    authorize @scene
  end

  def show
    @scene = Scene.find(params[:id])
  end
end
