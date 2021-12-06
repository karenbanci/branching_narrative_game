# Encounter.destroy_all
# Choice.destroy_all
# Scene.destroy_all
# Npc.destroy_all
# Narrative.destroy_all
# Tale.destroy_all
# User.destroy_all

#=============================================================================================================
# USERS
# =============================================================================================================
user = User.create!(email: "test@test.com", password: "batata", username: "test")

# =============================================================================================================
# TALES
# =============================================================================================================
tale_1 = Tale.create!(name: "The Hoard of Adrarth", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", user: user)

# =============================================================================================================
# NARRATIVES
# =============================================================================================================
narrative = Narrative.create!(user: user)

# =============================================================================================================
# NPCS
# =============================================================================================================
halia = Npc.create!(name:"Halia")
ziraldo = Npc.create!(name:"Ziraldo")
sir_raelys = Npc.create!(name:"Sir Raelys")
jorek = Npc.create!(name:"Jorek")
barnabas = Npc.create!(name:"Barnabas")
valena = Npc.create!(name:"Valena")
agronak = Npc.create!(name:"Agronak")

# =============================================================================================================
# SCENES
# =============================================================================================================
scene_1 = Scene.create!(
  tale: tale_1,
  npc_position1: "left",
  npc_position2: "right",
  story: %(
    Welcome, {pc_name}, to a magical land populated by men, elves, dwarves, and many other types of creatures. You are a lesser human noble, the captain of a [Confraternity] called 'The Dead Men'. You and your companions are on a months long journey on the trail of [Ardrath's Hoard]. You have set up camp in the woods and gathered around the campfire to unwind from a hard day of travel... \n
    {npc1} "Night is upon us, he should be back by now. Has Jorek not returned?" {newline}
    {npc2} "Hush, woman. I'm trying to finish my drink. If you are so concerned about the dwarf, go after him yourself." {newline}
    {npc1} "I dare you to call me woman again you drunkard. Perhaps I should carve my name on your forehead so you don't forget it?" {newline}
    {npc2} "Hah! I'd like to see you try. I doubt you can use those knives of yours in a fight, instead of sneaking up on your foe. Why didn't you go scouting tonight, anyways? Scared of the [Elgenwode], are we?" {newline}
    {npc1} "I refuse to argue with a vagabond. What do you think, captain?"
  )
)

scene_2 = Scene.create!(
  tale: tale_1,
  story: %(
    You and Halia grab your belongings and leave Ziraldo in the company of his bottle. {newline}
    {npc1} "Hopefully he can at least look after the horses in our absence." {newline}
    Before you can leave, however, you feel the wind being cut next to your cheeks, accompanied by a hissing sound. There's no mistaking it: the flight of an arrow. {newline}
    ? "Not so fast. Stay still and lay down your arms. You are surrounded." {newline}
    The voice is coming from behind you, but as you turn to look, you see only the dark forest.
  )
)

scene_3 = Scene.create!(
  tale: tale_1,
  story: %(
    {npc1} "Cheers to that, capt'n! Stop worrying that pretty face of yours and sing us a song, will ya?" {newline}
    {npc2} "Sing one yourself, minstrel. The only song I'll ever sing will be your [requiem]." {newline}

    As your two underlings continue their endless bickering, you sense something... you feel the wind being cut next to your cheeks, accompanied by a hissing sound. There's no mistaking it: the flight of an arrow. {newline}

    ?: "Lay down your arms and funerary rites won't be necessary. You are surrounded."
  )
)

scene_4 = Scene.create!(
  tale: tale_1,
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
  tale: tale_1,
  story: %(
    Another voice, this time that of a female, comes from your left. {newline}
    ? “I assure you, [monkey], I ‘’never’' miss. That was a warning shot.” {newline}
    The first voice is heard again. Calm and assertive. {newline}
    ? “Should these thieves move a single muscle, do not hesitate to end their miserable lives, sister.“
  )
)

scene_6 = Scene.create!(
  tale: tale_1,
  story: %(
    Silence rules over the glade for what feels like minutes. Tension hangs in the air. Finally, a male elf reveals himself and draws out his sword, as the familiar voice comes from his lips. {newline}
    {npc1} "I am Sir Raelys, captain of the "Last Legion". Trust me when I say: you are surrounded and my men have their sights trained on you. Now comply with my demands. I'll believe you are no threat once you are unarmed."
  )
)

scene_7 = Scene.create!(
  tale: tale_1,
  story: %(
    {npc1} "You expect me to ''surrender''? To a [hare]?" {newline}
    {npc2} "Heed your captain, [monkey]!". {newline}
    {npc1} "I'll do no such thing! I will not yield! ''I bow to no one!''" {newline}
    Before you can admonish the drunken lout for his insubordination, he draws his blade and rushes towards the woods, and all hell breaks loose. Arrows start flying towards your camp, and one of them hits you square in the chest, knocking you down.
  )
)

scene_8 = Scene.create!(
  tale: tale_1,
  story: %(
    As soon as you give the order, Ziraldo draws his blade and darts towards the woods, and all hell breaks loose. Arrows start flying towards your camp, and one of them hits you square in the chest, knocking you down.
  )
)

scene_9 = Scene.create!(
  tale: tale_1,
  story: %(
    ? "We are the children of the very forest you trespass upon. Now you have the option of leaving peacefully, or dying foolishly."
  )
)

scene_10 = Scene.create!(
  tale: tale_1,
  story: %(
    ? "We overheard your conversation. We know you are after [Adrarth's Hoard]." {newline}
    {npc1} "No honor among thieves, then?" {newline}
    ? "The treasure is mine by ''right'', human." {newline}
    {npc2} "Unless we get to it first, [hare]." {newline}
    The calm voice from before takes a furious tone after hearing the insult. {newline}
    ? "Control your lackeys! I will repeat myself: lay down your arms or suffer the consequences!"
  )
)

scene_11 = Scene.create!(
  tale: tale_1,
  story: %(
    {npc1} "Many elves have been knighted since the [Aurea Act]. You can believe as you wish. I will you ask again: will you comply and lay down your arms?"
  )
)

scene_12 = Scene.create!(
  tale: tale_1,
  story: %(
    As you finish uttering your words, the realization hits you: they will be your last. You look towards your left, from where the female voice was coming, and see, for a fraction of a second, the glint of an arrowhead. As it is loosened, you hear your companions shouting and drawing their wepons. {newline}
    You feel the arrow pierce deep in your gut, and instinctively your body freezes. Your throat aches, and you can’t help but cough heaps of blood. As your body falls down and your head hits the ground, you see Jorek driving one of his knives into the chest of an elf, and a fight breaks around you. {newline}
    You are dead.
  )
)

scene_13 = Scene.create!(
  tale: tale_1,
  story: %(
    You are dead.
  )
)

scene_14 = Scene.create!(
  tale: tale_1,
  story: %(
    You hit your head on the ground and you feel your conscience fading. As it comes and goes, you catch only glimpses of the battle around you. {newline}
    A crimson flash lights up the entire forest, and as trees are engulfed by the hellish light you see the dead corpse of Halia, an arrow protruding from her back. {newline}
    A brute of a man roars and brandishes a greataxe too large for any ordinary man to hold. He swings the weapon with purpose, lopping off Ziraldo's head in one clean blow. {newline}
    The voice you spoke to, now ingrained in your mind, howls in pain. You turn to see a bloody elf screeching and flailing his sword around madly with a knife stuck in his neck, and Jorek of all people deftly dodging each strike, and stabbing and slashing in turn. He turns to you and yells: {newline}
    {npc1} "Don't leave me captain! Strike true!" {newline}
    Then, darkness takes you once more. {newline}
    Once you come to, you feel your hands are bound. The forest is dark once more, and some of your horses have ran off. On the ground, the bodies of Ziraldo, Halia, and the elf who was threatening you earlier. Jorek is nowhere to be seen. {newline}
    Before you, three figures stand tall. The massive man you saw earlier is covered in blood, but unharmed. A female elf, her bow pointed towards you, and her face consumed with rage. And an unkown figure, face clad in a mask and bearing a staff.
  )
)

scene_15 = Scene.create!(
  tale: tale_1,
  story: %(
    The elf's face turns somber. She looks to her right and speaks.
  )
)

scene_16 = Scene.create!(
  tale: tale_1,
  story: %(
    The elf's face turns sour, and she grits her teeth. She looks to her right and speaks.
  )
)

scene_17 = Scene.create!(
  tale: tale_1,
  story: %(
    ? "What do you think Barnabas?" {newline}
    The masked man speaks, his voice echoing from behind the metal: {newline}
    {ncp1} "Sir Faelyn is dead. We have no captain." {newline}
    The brute speaks up. {newline}
    ?: "We don't need one. Who cares if they call us a [Confraternity] or not? I care not who leads us, Valena. We should kill this weakling and hunt down the dwarf!" {newline}
    {npc2} "Even if we manage to uncover [Adrarth's Hoard], we would have no claim to it. We would be treated as little more than a band of thieves, Agronak." {newline}
    {ncp1} "We would lack the legitamacy afforded by the [King]." {newline}
    {npc3} "And so you wish to ally with the men who killed Sir Faelyn?" {newline}
    {npc2} "I wish to recover the relics that were stolen from my people by that dragon. As did our late captain, need I remind you?" {newline}
    The man clad in the iron mask turns towards you. {newline}
    {ncp1} "Speak. What say you?"
  )
)

scene_18 = Scene.create!(
  tale: tale_1,
  story: %(
    {npc1} "On the contrary: it is the most logical decision." {newline}
    {npc2} "I disagree. Why would we ask our prisoner to lead us? Let us chop off their head and be done with this." {newline}
    {npc3} "And go back? Or go through with the quest and risk antagonizing the [Kingdom]? Consider our proposal, [monkey]. {newline} We all stand to gain from it." {newline}
    {npc2} "This is foolish. Don't forget there is an armed dwarf sneaking about in these bushes." {newline}
    {npc3} "Think carefully. If you don't value your life, then think on the gold and glory you are passing up." {newline}
    {npc3} "Can you bind them to their word?" {newline}
    Barnabas: "I shall render the vow magical, yet it must be uttered willingly."
  )
)

scene_19 = Scene.create!(
  tale: tale_1,
  story: %(
    {npc1} "Your friend attacked us first. Sir Raelys asked you to surrender." {newline}
    {npc2} "The situation escalated." {newline}
    {npc1} "Your company is no more. The Last Legion lacks a captain. Trust me, I am not eager to be joined by another human... But now more than ever, I must reclaim what was taken from my people." {newline}
    {npc2} "Our goals are aligned." {newline}
    {npc3} "If they refuse, let me be the one to chop off their heads." {newline}
    {npc1} "Let us try and avoid further beheadings, please?" {newline}
    {npc2} "Decide."
  )
)

scene_20 = Scene.create!(
  tale: tale_1,
  story: %(
    The elf looks to her companions and sighs. She nods her head, and the barbarian lifts his greataxe, eager to end your life. As he is about to strike, Jorek jumps down from a tree, trying to land on the man's back. {newline}
    But before he reaches his target, Barnabas lifts his staff and holds the dwarf suspended midair. You see Valena draw her bow and nock an arrow, pointing it towards him. Before she can fire it, your hear the swing of the axe. {newline}
    {npc1} "Die, scum!"
  )
)

scene_21 = Scene.create!(
  tale: tale_1,
  story: %(
    {npc1} "Come out, dwarf. It seems we are all brothers and sisters now. [''Confrars'']." {newline}
    The elf says the last work mockinly. Still, Jorek jumps down from a tree, landing somewhat awkwardly on the ground. He looks at you, confused, and shakes his head. {newline}
    {npc2} "Captain? I cannot believe this..." {newline}
    {npc3} "At least we agree on that, little one." {newline}
    {npc4} "I expect we shall depart at first light?"
  )
)

scene_22 = Scene.create!(
  tale: tale_1,
  story: %(
    {npc1} jumps down from a tree, landing somewhat awkwardly on the ground. He looks at you, confused, and shakes his head. {newline}
    {npc1} "Captain? I... trust your better judgement. I hope we don't live to regret this" {newline}
    {npc2} "I will make sure you live to regret the murder of Sir Raelys, little one." {newline}
    {npc1} "Worry not, you oaf. I can send you to him whenever you wish me to." {newline}
    {npc3} "Put your past squabbles behind you. We all have a common goal now." {newline}
    {npc4} "I expect we shall depart at first light?"
  )
)

scene_23 = Scene.create!(
  tale: tale_1,
  story: %(
    As soon as the elf unties you, you reach for a knife in her belt, and stab her with it. As you give Jorek the order to attack, Agronak engages him in combat. You feel a stinging pain in your chest. {newline}
    {npc1} "Your vow was bound by magic. Once you break a magical oath, your heart stops beating." {newline}
    The pain in your chest surges. Your breath falters. You fall to your knees.
  )
)

scene_24 = Scene.create!(
  tale: tale_1,
  story: %(
    As soon as you are untied, all of your new comrades start moving and complying with their assigned tasks. They seem to obey you, at the very least. But none of them trade words with you.
  )
)

scene_25 = Scene.create!(
  tale: tale_1,
  story: %(
    {npc1} "You have more faith than I do in the hearts of men, captain." {newline}
    Jorek moves towards you, keeping a watchful eye on your new companions. He grabs a knife and cuts your bindings. {newline}
    {npc1} "I hope they do not slit our throats in the night. I will sleep with one eye open for the foreseeable future. Let us tend to our fallen." {newline}
    As soon as you are untied, all of your new comrades start moving and complying with their assigned tasks. They seem to obey you, at the very least. But they only trade passing words with you.
  )
)

scene_26 = Scene.create!(
  tale: tale_1,
  story: %(
    {npc1} "I won't miss Ziraldo much, to be frank. But Halia deserved better. At least I got their leader... An elven noble? I did not even know such a thing existed. Anyways, I'm sorry I couldn't act sooner, cap
  )
)

# =============================================================================================================
# CHOICES
# =============================================================================================================
# scene 1
Choice.create!(action: "I think you should stop worrying. Jorek can take care of himself.", result: " ", next_scene: scene_3, scene: scene_1)
Choice.create!(action: "I think the two of you deserve each other.", result: " ", next_scene: scene_4, scene: scene_1)
Choice.create!(action: "What do I think? I act. Let us search for him.", result: " ", next_scene: scene_2, scene: scene_1)

# scene 2
Choice.create!(action: "You missed.", result: "", next_scene: scene_5, scene: scene_2)
Choice.create!(action: "Show yourselves! We mean no harm!", result: { peace: 1 }, next_scene: scene_6, scene: scene_2 )
Choice.create!(action: "Lay down your arms, and instruct your [confrars] to do the same.", result: { peace: 1 }, next_scene: scene_7, scene: scene_2 )
Choice.create!(action: "We are called The Dead Men for a reason, cowards. Strike true!", result: "", next_scene: scene_8, scene: scene_2 )

# scene 3
Choice.create!(action: "Show yourselves! We mean no harm!", result: "", next_scene: scene_6, scene: scene_3)
Choice.create!(action: "Lay down your arms, and instruct your [confrars] to do the same.", result: { peace: 1 }, next_scene: scene_7, scene: scene_3)
Choice.create!(action: "We are called The Dead Men for a reason, cowards. Strike true!", result: "", next_scene: scene_8, scene: scene_3)

# scene 4
Choice.create!(action: "Lay down your arms, and instruct your [confrars] to do the same.", result: { peace: 1 }, next_scene: scene_7, scene: scene_4)
Choice.create!(action: "We are called The Dead Men for a reason, cowards. Strike true!", result: "", next_scene: scene_8, scene: scene_4)

# scene 5
Choice.create!(action: "Monkey? So you are elves.", result: "", next_scene: scene_9, scene: scene_5)
Choice.create!(action: "You dare call us thieves?", result: "", next_scene: scene_10, scene: scene_5 )

# scene 6
Choice.create!(action: "Sir Raelys? You expect me to believe you a noble?", result: "", next_scene: scene_11, scene: scene_6 )
Choice.create!(action: "Lay down your arms, and instruct your [confrars] to do the same", result: { peace: 1 }, next_scene: scene_7, scene: scene_6)
Choice.create!(action: "We are called The Dead Men for a reason, cowards. Strike true!", result: "", next_scene: scene_8, scene: scene_6)

# scene 7
Choice.create!(action: "Chaos ensues.", result: "", next_scene: scene_14, scene: scene_7)

# scene 8
Choice.create!(action: "Chaos ensues.", result: "", next_scene: scene_14, scene: scene_8)

# scene 9
Choice.create!(action: "Show yourselves! We mean no harm!", result: { peace: 1 }, next_scene: scene_6, scene: scene_9)
Choice.create!(action: "Lay down your arms, and instruct your [confrars] to do the same.", result: { peace: 1 }, next_scene: scene_7, scene: scene_9)
Choice.create!(action: "We are called The Dead Men for a reason, cowards. Strike true!", result: "", next_scene: scene_8, scene: scene_9)

# scene 10
Choice.create!(action: "What Choices, ''hare''?", result: "", next_scene: scene_12, scene: scene_10 )
Choice.create!(action: "Show yourselves! We mean no harm!", result: { peace: 1 }, next_scene: scene_6, scene: scene_10)
Choice.create!(action: "We are called The Dead Men for a reason, cowards. Strike true!", result: "", next_scene: scene_8, scene: scene_10 )
Choice.create!(action: "Lay down your arms, and instruct your [confrars] to do the same.", result: { peace: 1 }, next_scene: scene_7, scene: scene_10 )

# scene 11
Choice.create!(action: "Lay down your arms, and instruct your [confrars] to do the same.", result: {peace: 1 }, next_scene: scene_7, scene: scene_11)
Choice.create!(action: "We are called The Dead Men for a reason, cowards. Strike true!", result: "", next_scene: scene_8, scene: scene_11)

# scene 12
Choice.create!(action: "You are dead.", result: "", next_scene: scene_13, scene: scene_12)

# scene 14
Choice.create!(action: "My friends lie dead! And so does your leader! What is the point of so much bloodshed!? Release me and we can come to terms!", result: {peace: 1 }, next_scene: scene_15, scene: scene_14)
Choice.create!(action: "You savages, do you have any idea who you have crossed? Release me, or I'll have my friend kill each and every one of you!", result: "", next_scene: scene_16, scene: scene_14)

# scene 15
Choice.create!(action: "They talk amongst themselves.", result: "", next_scene: scene_17, scene: scene_15)

# scene 16
Choice.create!(action: "They talk amongst themselves.", result: "", next_scene: scene_17, scene: scene_16)

# scene 17
Choice.create!(action: "You wish to ally with us? Are you completely mad?", result: "", next_scene: scene_18, scene: scene_17)
Choice.create!(action: "I have argued for peace from the very start! You were the ones who attacked us!", result: {
  #ONLY IF PEACEFUL
  }, next_scene: scene_19, scene: scene_17)

# scene 18
Choice.create!(action: "I... accept. I will lead you. But do not believe for a moment I will forget what you have done.", result: {
  # + Bound
  }, next_scene: scene_21, scene: scene_18)
Choice.create!(action: "I am a Dead Man to the end. Do what you must.", result: "", next_scene: scene_20, scene: scene_18)

# scene 19
Choice.create!(action: "I am a Dead Man to the end. Do what you must.", result: "", next_scene: scene_20, scene: scene_19)
Choice.create!(action: "I... accept. I will lead The Last Legion. Jorek, stand down. From this moment forward these are our [confrars]...", result: "", next_scene: scene_22, scene: scene_19)

# scene 20
Choice.create!(action: "You are dead.", result: "", next_scene: scene_13, scene: scene_20)

# scene 21
Choice.create!(action: "Untie me, I command all of you! Elf, you are on watch tonight. Mage, dispose of the body of your former captain as you see fit. And you, brute, stay out of my way. Jorek, come with me, we shall cremate our comrades according to [Solist] tradition.", result: "", next_scene: scene_24, scene: scene_21)
Choice.create!(action: "Untie me, I command all of you! Jorek, draw your blades and help me to slay these murderers!", result: "", next_scene: scene_23, scene: scene_21)

# scene 22
Choice.create!(action: "We depart at first light. One of you should set up watch. The others should dispose of Sir Raelys' body according to elven tradition. We shall do the same for our fallen [confrars] according to [Solist] tradition.", result: {}, next_scene: scene_25, scene: scene_22)

# scene 23
Choice.create!(action: "You are dead.", result: "", next_scene: scene_13, scene: scene_23)

# scene 24
Choice.create!(action: "You and Jorek move towards the bodies of your fallen [confrars].", result: "", next_scene: scene_26, scene: scene_24)

# scene 25
Choice.create!(action: "You and Jorek move towards the bodies of your fallen [confrars].", result: "", next_scene: scene_26, scene: scene_25)

# =============================================================================================================
# ENCOUNTER
# =============================================================================================================
# scene 1
Encounter.create!(scene: scene_1, npc: halia)
Encounter.create!(scene: scene_1, npc: ziraldo)

# scene 2
Encounter.create!(scene: scene_2, npc: halia)

# scene 3
Encounter.create!(scene: scene_3, npc: ziraldo)
Encounter.create!(scene: scene_3, npc: halia)

# scene 4
Encounter.create!(scene: scene_4, npc: halia)
Encounter.create!(scene: scene_4, npc: ziraldo)

# scene 6
Encounter.create!(scene: scene_6, npc: sir_raelys)

# scene 7
Encounter.create!(scene: scene_7, npc: ziraldo)
Encounter.create!(scene: scene_7, npc: sir_raelys)

# scene 10
Encounter.create!(scene: scene_10, npc: halia)
Encounter.create!(scene: scene_10, npc: ziraldo)

# scene 11
Encounter.create!(scene: scene_11, npc: sir_raelys)

# scene 14
Encounter.create!(scene: scene_14, npc: jorek)

# scene 17
Encounter.create!(scene: scene_17, npc: barnabas)
Encounter.create!(scene: scene_17, npc: valena)

# scene 18
Encounter.create!(scene: scene_18, npc: barnabas)
Encounter.create!(scene: scene_18, npc: agronak)
Encounter.create!(scene: scene_18, npc: valena)

# scene 19
Encounter.create!(scene: scene_19, npc: valena)
Encounter.create!(scene: scene_19, npc: barnabas)
Encounter.create!(scene: scene_19, npc: agronak)

# scene 20
Encounter.create!(scene: scene_19, npc: agronak)

# scene 21
Encounter.create!(scene: scene_21, npc: valena)
Encounter.create!(scene: scene_21, npc: jorek)
Encounter.create!(scene: scene_21, npc: agronak)
Encounter.create!(scene: scene_21, npc: barnabas)

# scene 22
Encounter.create!(scene: scene_22, npc: jorek)
Encounter.create!(scene: scene_22, npc: agronak)
Encounter.create!(scene: scene_22, npc: valena)
Encounter.create!(scene: scene_22, npc: barnabas)

# scene 23
Encounter.create!(scene: scene_23, npc: barnabas)

# scene 24
Encounter.create!(scene: scene_24, npc: jorek)

# scene 26
Encounter.create!(scene: scene_26, npc: jorek)
