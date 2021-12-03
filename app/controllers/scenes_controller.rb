class ScenesController < ApplicationController
  def show
    @scene = Scene.find(params[:id])
    @story = @scene.story.gsub("{newline}", "<br>").html_safe
  end
end



# @story = @scene.story.gsub("{pc_name}", narrative.pc_name).gsub("{npc1}", @scene.npcs[0].name).gsub("{npc2}", @scene.npcs[1].name).gsub("{npc3}", @scene.npcs[2].name).split("{newline}")
