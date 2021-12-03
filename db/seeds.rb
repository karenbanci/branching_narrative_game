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

scene_4 = Scene.create!(
  story: %(
    {npc1} "I meant about Jorek. God, I'm surrounded by fools." {newline}
    {npc2} "One of those fools is also handsome. Come by my tent tonight, dearest." {newline}
    {npc1} "I'll look for him by myself. As far away as possible from you." {newline}
    You observe as Halia gathers her belongings and Ziraldo takes another swig. As she stands up, however, you notice a rustling in the leaves to your left. As you look towards it, you see something coming out of some bushes. It looks like... an arrowtip! Before you can warn her you see the arrow being loosened. A moment passes, and you hear a thud. Halia lies on the ground before you, motionless. {newline}
    ? "Lay down your arms. You are surrounded and outnumbered." {newline}
    The voice is coming from behind you, but as you turn to look, you see only the dark forest.
  )
)

scene_5 = Scene.create!(
  story: %(
    Another voice, this time that of a female, comes from your left. {newline}
    ? “I assure you, [monkey], I ‘’never’' miss. That was a warning shot.” {newline}
    The first voice is heard again. Calm and assertive. {newline}
    ? “Should these thieves move a single muscle, do not hesitate to end their miserable lives, sister.“
  )
)

scene_10 = Scene.create!(
  story: %(
    ? "We overheard your conversation. We know you are after [Adrarth's Hoard]." {newline}
    {npc1} "No honor among thieves, then?" {newline}
    ? "The treasure is mine by ''right'', human." {newline}
    {npc2} "Unless we get to it first, [hare]." {newline}
    The calm voice from before takes a furious tone after hearing the insult. {newline}
    ? "Control your lackeys! I will repeat myself: lay down your arms or suffer the consequences!"
  )
)

scene_12 = Scene.create!(
  story: %(
    As you finish uttering your words, the realization hits you: they will be your last. You look towards your left, from where the female voice was coming, and see, for a fraction of a second, the glint of an arrowhead. As it is loosened, you hear your companions shouting and drawing their wepons. {newline}
    You feel the arrow pierce deep in your gut, and instinctively your body freezes. Your throat aches, and you can’t help but cough heaps of blood. As your body falls down and your head hits the ground, you see Jorek driving one of his knives into the chest of an elf, and a fight breaks around you. {newline}
    You are dead.
  )
)

# =============================================================================================================
# CONSEQUENCES
# =============================================================================================================
# scene 1
consequence_1 = Consequence.create!(option: "I think you should stop worrying. Jorek can take care of himself.", result: {} )
consequence_2 = Consequence.create!(option: "I think the two of you deserve each other.", result: {})
consequence_3 = Consequence.create!(option: "What do I think? I act. Let us search for him.", result: {}, scene: scene_2)

# scene 2
consequence_4 = Consequence.create!(option: "You missed.", result: {}, scene: scene_5)
consequence_5 = Consequence.create!(option: "Show yourselves! We mean no harm!", result: { peace: 1 }, scene: scene_6 )
consequence_6 = Consequence.create!(option: "Lay down your arms, and instruct your [confrars] to do the same.", result: { peace: 1 }, scene: scene_7 )
consequence_7 = Consequence.create!(option: "We are called The Dead Men for a reason, cowards. Strike true!", result: {}, scene: scene_8 )

# scene 4
consequence_14 = Consequence.create!(option: "Lay down your arms, and instruct your [confrars] to do the same.", result: { peace: 1 }, scene: scene_7)
consequence_15 = Consequence.create!(option: "We are called The Dead Men for a reason, cowards. Strike true!", result: { }, scene: scene_8)

# scene 5
consequence_8 = Consequence.create!(option: "Monkey? So you are elves.", result: {}, scene: scene_9 )
consequence_9 = Consequence.create!(option: "You dare call us thieves?", result: {}, scene: scene_10 )

# scene 10
consequence_10 = Consequence.create!(option: "What consequences, ''hare''?", result: {}, scene: scene_12 )
consequence_11 = Consequence.create!(option: "Show yourselves! We mean no harm!", result: { peace: 1 }, scene: scene_6)
consequence_12 = Consequence.create!(option: "We are called The Dead Men for a reason, cowards. Strike true!", result: {}, scene: scene_8 )
consequence_13 = Consequence.create!(option: "Lay down your arms, and instruct your [confrars] to do the same.", result: { peace: 1 }, scene: scene_7 )

# =============================================================================================================
# CHOICES
# =============================================================================================================
# scene 1
Choice.create!(scene: scene_1, consequence: consequence_1)
Choice.create!(scene: scene_1, consequence: consequence_2)
Choice.create!(scene: scene_1, consequence: consequence_3)

# scene 2
Choice.create!(scene: scene_2, consequence: consequence_4)
Choice.create!(scene: scene_2, consequence: consequence_5)
Choice.create!(scene: scene_2, consequence: consequence_6)
Choice.create!(scene: scene_2, consequence: consequence_7)

# scene 4
Choice.create!(scene: scene_4, consequence: consequence_14)
Choice.create!(scene: scene_4, consequence: consequence_15)

# scene 5
Choice.create!(scene: scene_5, consequence: consequence_8)
Choice.create!(scene: scene_5, consequence: consequence_9)

# scene 10
Choice.create!(scene: scene_10, consequence: consequence_10)
Choice.create!(scene: scene_10, consequence: consequence_11)
Choice.create!(scene: scene_10, consequence: consequence_12)
Choice.create!(scene: scene_10, consequence: consequence_13)

# =============================================================================================================
# ENCOUNTER
# =============================================================================================================
# scene 1
Encounter.create!(scene: scene_1, npc: halia)
Encounter.create!(scene: scene_1, npc: ziraldo)

# scene 2
Encounter.create!(scene: scene_2, npc: halia)

# scene 4
Encounter.create!(scene: scene_4, npc: halia)
Encounter.create!(scene: scene_4, npc: ziraldo)

# scene 10
Encounter.create!(scene: scene_10, npc: halia)
Encounter.create!(scene: scene_10, npc: ziraldo)
