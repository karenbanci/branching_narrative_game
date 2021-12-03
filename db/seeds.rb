# =============================================================================================================
# USERS
# =============================================================================================================
user = User.create!(email: "test@test.com", password: "batata", username: "test")

# =============================================================================================================
# NARRATIVES
# =============================================================================================================
narrative = Narrative.create!(user: user)

# =============================================================================================================
# NPCS
# =============================================================================================================
halia = Npc.create!(name:"Halia")
ziraldo = Npc.create!(name:"Ziraldo")

# =============================================================================================================
# SCENES
# =============================================================================================================
scene_1 = Scene.create!(
  npc_position1: "left",
  npc_position2: "right",
  story:
        %(Welcome, {pc_name}, to a magical land populated by men, elves, dwarves, and many other types of creatures. You are a lesser human noble, the captain of a [Confraternity] called 'The Dead Men'. You and your companions are on a months long journey on the trail of [Ardrath's Hoard]. You have set up camp in the woods and gathered around the campfire to unwind from a hard day of travel... {newline}
        {npc1} "Night is upon us, he should be back by now. Has Jorek not returned?" {newline}
        {npc2} "Hush, woman. I'm trying to finish my drink. If you are so concerned about the dwarf, go after him yourself." {newline}
        {npc1} "I dare you to call me woman again you drunkard. Perhaps I should carve my name on your forehead so you don't forget it?" {newline}
        {npc2} "Hah! I'd like to see you try. I doubt you can use those knives of yours in a fight, instead of sneaking up on your foe. Why didn't you go scouting tonight, anyways? Scared of the [Elgenwode], are we?" {newline}
        {npc1} "I refuse to argue with a vagabond. What do you think, captain?" {newline})
)

# =============================================================================================================
# CONSEQUENCES
# =============================================================================================================
consequence_1 = Consequence.create!(option: "I think you should stop worrying. Jorek can take care of himself.", result:{})
consequence_2 = Consequence.create!(option: "I think the two of you deserve each other.", result:{})
consequence_3 = Consequence.create!(option: "What do I think? I act. Let us search for him.", result:{}, scene: scene_2)


# =============================================================================================================
# CHOICES
# =============================================================================================================
Choice.create!(scene: scene_1, consequence: consequence_1)
Choice.create!(scene: scene_1, consequence: consequence_2)
Choice.create!(scene: scene_1, consequence: consequence_3)

# =============================================================================================================
# ENCOUNTER
# =============================================================================================================
Encounter.create!(scene: scene_1, npc: npc1)
Encounter.create!(scene: scene_1, npc: npc2)
