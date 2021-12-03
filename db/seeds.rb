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
  story: %(
    Welcome, {pc_name}, to a magical land populated by men, elves, dwarves, and many other types of creatures. You are a lesser human noble, the captain of a [Confraternity] called 'The Dead Men'. You and your companions are on a months long journey on the trail of [Ardrath's Hoard]. You have set up camp in the woods and gathered around the campfire to unwind from a hard day of travel... {newline}
    {npc1} "Night is upon us, he should be back by now. Has Jorek not returned?" {newline}
    {npc2} "Hush, woman. I'm trying to finish my drink. If you are so concerned about the dwarf, go after him yourself." {newline}
    {npc1} "I dare you to call me woman again you drunkard. Perhaps I should carve my name on your forehead so you don't forget it?" {newline}
    {npc2} "Hah! I'd like to see you try. I doubt you can use those knives of yours in a fight, instead of sneaking up on your foe. Why didn't you go scouting tonight, anyways? Scared of the [Elgenwode], are we?" {newline}
    {npc1} "I refuse to argue with a vagabond. What do you think, captain?"
  )
)

scene_2 = Scene.create!(
  story: %(
    You and Halia grab your belongings and leave Ziraldo in the company of his bottle. {newline}
    {npc1} "Hopefully he can at least look after the horses in our absence." {newline}
    Before you can leave, however, you feel the wind being cut next to your cheeks, accompanied by a hissing sound. There's no mistaking it: the flight of an arrow. {newline}
    ? "Not so fast. Stay still and lay down your arms. You are surrounded." {newline}
    The voice is coming from behind you, but as you turn to look, you see only the dark forest.
  )
)

# =============================================================================================================
# CONSEQUENCES
# =============================================================================================================
consequence_1 = Consequence.create!(option: "I think you should stop worrying. Jorek can take care of himself.", result: {} )
consequence_2 = Consequence.create!(option: "I think the two of you deserve each other.", result: {})
consequence_3 = Consequence.create!(option: "What do I think? I act. Let us search for him.", result: {}, scene: scene_2)

consequence_4 = Consequence.create!(option: "You missed.", result: {}, scene: scene_3)
consequence_5 = Consequence.create!(option: "Show yourselves! We mean no harm!", result: { peace: 1 }, scene: "" )
consequence_6 = Consequence.create!(option: "Lay down your arms, and instruct your [confrars] to do the same.", result: { peace: 1 }, scene: "" )
consequence_7 = Consequence.create!(option: "We are called The Dead Men for a reason, cowards. Strike true!", result: {}, scene: "" )

# =============================================================================================================
# CHOICES
# =============================================================================================================
Choice.create!(scene: scene_1, consequence: consequence_1)
Choice.create!(scene: scene_1, consequence: consequence_2)
Choice.create!(scene: scene_1, consequence: consequence_3)

Choice.create!(scene: scene_2, consequence: consequence_4)
Choice.create!(scene: scene_2, consequence: consequence_5)
Choice.create!(scene: scene_2, consequence: consequence_6)
Choice.create!(scene: scene_2, consequence: consequence_7)

# =============================================================================================================
# ENCOUNTER
# =============================================================================================================
Encounter.create!(scene: scene_1, npc: halia)
Encounter.create!(scene: scene_1, npc: ziraldo)

Encounter.create!(scene: scene_2, npc: halia)
