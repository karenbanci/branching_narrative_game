require "open-uri"
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
user = User.create!(email: "admin@admin.com", password: "lewagon", username: "Admin", admin: true)

# =============================================================================================================
# TALES
# =============================================================================================================
tale_1 = Tale.create!(name: "Ardrath's Hoard", description: "The Kingdom of Kharak, the largest human nation ever created, is at the middle of the world when it comes to politics, technology, magic, and wealth. The realm has seen its fair share of strife and war, but currently its inhabitants live in an era of peace. <br> <br> That is precisely why so many mercenaries, soldiers of fortune, grave-robbers, and even adventurous nobles have banded together in search of fame, glory, and riches. For when there is no adventure to be found at home, one can be certain that men shall seek it in the outskirts and the wilds, there is much treasure and danger to be found.", user: user)

# =============================================================================================================
# NARRATIVES
# =============================================================================================================
narrative = Narrative.create!(user: user)

# =============================================================================================================
# NPCS
# =============================================================================================================

# halia
halia = Npc.create!(name: "Halia")
halia.photo.attach(io: URI.open("https://res.cloudinary.com/dpsoxgtgz/image/upload/v1639141092/The%20Hoard%20of%20Adrarth/characters-game/halia.png"), content_type: "image.png", filename: "#{halia.name}.png")

# ziraldo
ziraldo = Npc.create!(name: "Ziraldo")
ziraldo.photo.attach(io: URI.open("https://res.cloudinary.com/dpsoxgtgz/image/upload/v1638973675/The%20Hoard%20of%20Adrarth/characters-game/ziraldo.png"), content_type: "image/png", filename: ziraldo.name)

# jorek
jorek = Npc.create!(name: "Jorek")
jorek.photo.attach(io: URI.open("https://res.cloudinary.com/dpsoxgtgz/image/upload/v1639059198/The%20Hoard%20of%20Adrarth/characters-game/jorek.png"), content_type: "image/png", filename: jorek.name)

# sir raelys
sir_raelys = Npc.create!(name: "Sir Raelys")
sir_raelys.photo.attach(io: URI.open("https://res.cloudinary.com/dpsoxgtgz/image/upload/v1638973950/The%20Hoard%20of%20Adrarth/characters-game/raelys.png"), content_type: "image/png", filename: sir_raelys.name)

# valena
valena = Npc.create!(name: "Valena")
valena.photo.attach(io: URI.open("https://res.cloudinary.com/dpsoxgtgz/image/upload/v1638986920/The%20Hoard%20of%20Adrarth/characters-game/valena.png"), content_type: "image/png", filename: valena.name)

# agronak
agronak = Npc.create!(name: "Agronak")
agronak.photo.attach(io: URI.open("https://res.cloudinary.com/dpsoxgtgz/image/upload/v1638978106/The%20Hoard%20of%20Adrarth/characters-game/agronak1.png"), content_type: "image/png", filename: agronak.name)

# barnabas
barnabas = Npc.create!(name: "Barnabas")
barnabas.photo.attach(io: URI.open("https://res.cloudinary.com/dpsoxgtgz/image/upload/v1638973675/The%20Hoard%20of%20Adrarth/characters-game/barnabas.png"), content_type: "image/png", filename: barnabas.name)

# =============================================================================================================
# SCENES
# =============================================================================================================

scene_1 = Scene.create!(
  tale: tale_1,
  story: %(
    Welcome, {pc_name}, to the Realm, a magical land populated by humans, elves, dwarves, and many other types of creatures. You are a lesser human noble, the captain of a Confraternity called 'The Dead Men'. You and your companions are on a months long journey on the trail of Ardrath's Hoard. You have set up camp in the woods and gathered around the campfire to unwind from a hard day of travel... \n {newline}
    <b> {npc1} </b>"Night is upon us, he should be back by now. Has Jorek not returned?" {newline}
    <b> {npc2} </b> "Hush, woman. I'm trying to finish my drink. If you are so concerned about the dwarf, go after him yourself." {newline}
    <b> {npc1} </b> "I dare you to call me woman again you drunkard. Perhaps I should carve my name on your forehead so you don't forget it?" {newline}
    <b> {npc2} </b> "Hah! I'd like to see you try. Why didn't you go scouting tonight, anyways? Scared of the Elgenwode, are you?" {newline}
    <b> {npc1} </b> "I refuse to argue with a vagabond. What do you think, captain?"
  ),
)

scene_2 = Scene.create!(
  tale: tale_1,
  story: %(
    You and Halia grab your belongings and leave Ziraldo in the company of his bottle. {newline}
    <b> {npc1} </b> "Hopefully the fool can at least look after the horses in our absence." {newline}
    Before you can leave, however, you feel the wind being cut next to your cheeks, accompanied by a hissing sound. There's no mistaking it: the flight of an arrow. {newline}
    ? "Not so fast. Stay still and lay down your arms. You are surrounded." {newline}
    The voice is coming from behind you, but as you turn to look, you see only the dark forest.
  ),
)

scene_3 = Scene.create!(
  tale: tale_1,
  story: %(
    <b> {npc1} </b> "Cheers to that, capt'n! Stop worrying that pretty face of yours and sing us a song, wil? {newline}
    <b> {npc2} </b> "Sing one yourself, minstrel. The only song I'll ever sing will be at your funeral." {newline}
    As your two underlings continue their endless bickering, you sense something... you feel the wind being cut next to your cheeks, accompanied by a hissing sound. There's no mistaking it: the flight of an arrow. {newline}
    ? "Lay down your arms and a funeral won't be necessary. You are surrounded."
  ),
)

scene_4 = Scene.create!(
  tale: tale_1,
  story: %(
    <b> {npc1} </b> "I meant about Jorek. God, I'm surrounded by fools." {newline}
    <b> {npc2} </b> "One of those fools is also handsome. Come by my tent tonight, dearest." {newline}
    <b> {npc1} </b> "I'll look for him by myself. As far away as possible from you." {newline}
    You observe as Halia gathers her belongings and Ziraldo takes another swig. As she stands up, however, you notice a rustling in the leaves to your left. As you look towards it, you see something coming out of some bushes. It looks like... an arrowtip! Before you can warn her you see the arrow being loosened. A moment passes, and you hear a thud. Halia lies on the ground before you, motionless. {newline}
    ? "Lay down your arms. You are surrounded and outnumbered." {newline}
    The voice is coming from behind you, but as you turn to look, you see only the dark forest.
  ),
)

scene_5 = Scene.create!(
  tale: tale_1,
  story: %(
    Another voice, this time that of a female, comes from your left. {newline}
    ? “I assure you, monkey, I never miss. That was a warning shot.” {newline}
    The first voice is heard again. Calm and assertive. {newline}
    ? “Should these thieves move a single muscle, do not hesitate to end their miserable lives, sister.“
  ),
)

scene_6 = Scene.create!(
  tale: tale_1,
  story: %(
    Silence rules over the glade for what feels like minutes. Tension hangs in the air. Finally, a male elf reveals himself and draws out his sword, as the familiar voice comes from his lips. {newline}
    <b> {npc1} </b> "I am Sir Raelys, captain of the Last Legion. Trust me when I say: you are surrounded and my men have their sights trained on you. Now comply with my demands. I'll believe you are no threat once you are unarmed."
  ),
)

scene_7 = Scene.create!(
  tale: tale_1,
  story: %(
    <b> {npc1} </b> "You expect me to surrender? To a hare?" {newline}
    <b> {npc2} </b> "Heed your captain, monkey!". {newline}
    <b> {npc1} </b> "I'll do no such thing! I will not yield! You'll regret this!" {newline}
    Before you can admonish the drunken lout for his insubordination, he draws his blade and rushes towards the woods, and all hell breaks loose. Arrows start flying towards your camp, and one of them hits you square in the chest, knocking you down.
  ),
)

scene_8 = Scene.create!(
  tale: tale_1,
  story: %(
    As soon as you give the order, Ziraldo draws his blade and darts towards the woods, and all hell breaks loose. Arrows start flying towards your camp, and one of them hits you square in the chest, knocking you down.
  ),
)

scene_9 = Scene.create!(
  tale: tale_1,
  story: %(
    ? "We are the children of the very forest you trespass upon. Now you have the option of leaving peacefully, or dying foolishly."
  ),
)

scene_10 = Scene.create!(
  tale: tale_1,
  story: %(
    ? "We overheard your conversation. We know you are after Ardrath's Hoard." {newline}
    <b> {npc1} </b "No honor among thieves, then?" {newline}
    ? "The treasure is mine by right, human." {newline}
    <b> {npc2} </b> "Unless we get to it first, hare." {newline}
    The calm voice from before takes a furious tone after hearing the insult. {newline}
    ? "Control your lackeys! I will repeat myself: lay down your arms or suffer the consequences!"
  ),
)

scene_11 = Scene.create!(
  tale: tale_1,
  story: %(
    <b> {npc1} </b> "Many elves have been knighted since the Aurea Act. You can believe as you wish, it matters little to me. I will you ask again: will you comply and lay down your arms?"
  ),
)

scene_12 = Scene.create!(
  tale: tale_1,
  story: %(
    As you finish uttering your words, the realization hits you: they will be your last. You look towards your left, from where the female voice was coming, and see, for a fraction of a second, the glint of an arrowhead. As it is loosened, you hear your companions shouting and drawing their wepons. {newline}
    You feel the arrow pierce deep in your gut, and instinctively your body freezes. Your throat aches, and you can't help but cough heaps of blood. As your body falls down and your head hits the ground, you see Jorek driving one of his knives into the chest of an elf, and a fight breaks around you. {newline}
    You are dead...
  ),
)

scene_13 = Scene.create!(
  tale: tale_1,
  story: %(
    You are dead.
  ),
)

scene_14 = Scene.create!(
  tale: tale_1,
  story: %(
    You hit your head on the ground and you feel your conscience fading. As it comes and goes, you catch only glimpses of the battle around you. {newline}
    A crimson flash lights up the entire forest, and as trees are engulfed by the hellish light you see the dead corpse of Halia, an arrow protruding from her back. {newline}
    A brute of a man roars and brandishes a greataxe too large for any ordinary man to hold. He swings the weapon with purpose, lopping off Ziraldo's head in one clean blow. {newline}
    The voice you spoke to, now ingrained in your mind, howls in pain. You turn to see a bloody elf screeching and flailing his sword around madly with a knife stuck in his neck, and Jorek of all people deftly dodging each strike, and stabbing and slashing in turn. He turns to you and yells: {newline}
    <b> {npc1} </b> "Don't leave me captain! Strike true!" {newline}
    Then, darkness takes you once more. {newline}
    Once you come to, you feel your hands are bound. The forest is dark once more, and some of your horses have ran off. On the ground, the bodies of Ziraldo, Halia, and the elf who was threatening you earlier. Jorek is nowhere to be seen. {newline}
    Before you, three figures stand tall. The massive man you saw earlier is covered in blood, but unharmed. A female elf, her bow pointed towards you, and her face consumed with rage. And an unkown figure, face clad in a mask and bearing a staff.
  ),
)

scene_15 = Scene.create!(
  tale: tale_1,
  story: %(
    The elf's face turns somber. She looks to her right and speaks.
  ),
)

scene_16 = Scene.create!(
  tale: tale_1,
  story: %(
    The elf's face turns sour, and she grits her teeth. She looks to her right and speaks.
  ),
)

scene_17 = Scene.create!(
  tale: tale_1,
  story: %(
    ?: "What do you think Barnabas?" {newline}
    The masked man speaks, his voice echoing from behind the metal: {newline}
    <b> {npc1} </b> "Sir Faelyn is dead. We have no captain." {newline}
    The brute speaks up:  {newline}
    ?: "We don't need one. Who cares if they call us a Confraternity or not? I care not who leads us, Valena. We should kill this weakling and hunt down the dwarf!" {newline}
    <b> {npc2} </b> "Even if we manage to uncover Ardrath's Hoard, we would have no claim to it. We would be treated as little more than a band of thieves, Agronak." {newline}
    <b> {npc1} </b> "We would lack the legitamacy afforded by the King." {newline}
    <b> {npc3} </b> "And so you wish to ally with the men who killed Sir Faelyn?" {newline}
    <b> {npc2} </b> "I wish to recover the relics that were stolen from my people by that dragon. As did our late captain, need I remind you?" {newline}
    The man clad in the iron mask turns towards you. {newline}
    <b> {npc1} </b> "Speak. What say you?"
  ),
)

scene_18 = Scene.create!(
  tale: tale_1,
  story: %(
    <b> {npc1} </b> "On the contrary: it is the most logical decision." {newline}
    <b> {npc2} </b> "I disagree. Why would we ask our prisoner to lead us? Let us chop off their head and be done with this." {newline}
    <b> {npc3} </b> "And go back? Or go through with the quest and risk antagonizing the Realm? Forget it, Agronak. As for you, consider our proposal, monkey. We all stand to gain from it." {newline}
    <b> {npc2} </b> "This is foolish. Don't forget there is an armed dwarf sneaking about in these bushes." {newline}
    <b> {npc3} </b> "Think carefully. If you don't value your life, then think on the gold and glory you are passing up." {newline}
    <b> {npc1} </b> "I can render the vow magical, yet it must be uttered willingly."
  ),
)

scene_19 = Scene.create!(
  tale: tale_1,
  story: %(
    <b> {npc1} </b> "Your friend attacked us first. Sir Raelys asked you to surrender." {newline}
    <b> {npc2} </b>  "The situation escalated." {newline}
    <b> {npc1} </b> "Your company is no more. The Last Legion lacks a captain. Trust me, I am not eager to be joined by another human... But now more than ever, I must reclaim what was taken from my people." {newline}
    <b> {npc2} </b> "Our goals are aligned." {newline}
    <b> {npc3} </b> "If they refuse, let me be the one to chop off their heads." {newline}
    <b> {npc1} </b> "Let us try and avoid further beheadings, please?" {newline}
    <b> {npc2} </b> "Decide."
  ),
)

scene_20 = Scene.create!(
  tale: tale_1,
  story: %(
    The elf looks to her companions and sighs. She nods her head, and the barbarian lifts his greataxe, eager to end your life. As he is about to strike, Jorek jumps down from a tree, trying to land on the man's back. {newline}
    But before he reaches his target, Barnabas lifts his staff and holds the dwarf suspended midair. You see Valena draw her bow and nock an arrow, pointing it towards him. Before she can fire it, your hear the swing of the axe. {newline}
    <b> {npc1} </b> "Die, scum!" {newline}
    You are dead...
  ),
)

scene_21 = Scene.create!(
  tale: tale_1,
  story: %(
    <b> {npc1} </b> "Come out, dwarf. It seems we are all brothers and sisters now. Confrars." {newline}
    The elf says the last work mockinly. Still, Jorek jumps down from a tree, landing somewhat awkwardly on the ground. He looks at you, confused, and shakes his head. {newline}
    <b> {npc2} </b> "Captain? I cannot believe this..." {newline}
    {npc3} "I expect we shall depart at first light?"
  ),
)

scene_22 = Scene.create!(
  tale: tale_1,
  story: %(
    Jorek jumps down from a tree, landing somewhat awkwardly on the ground. He looks at you, confused, and shakes his head. {newline}
    <b> {npc1} </b> "Captain? I... trust your better judgement. I hope we don't live to regret this" {newline}
    <b> {npc2} </b> "I will make sure you live to regret the murder of Sir Raelys, little one." {newline}
    <b> {npc1} </b> "Worry not, you oaf. I can send you to him whenever you wish me to." {newline}
    <b> {npc3} </b> "I expect we shall depart at first light?"
  ),
)

scene_23 = Scene.create!(
  tale: tale_1,
  story: %(
    As soon as the elf unties you, you reach for a knife in her belt, and stab her with it. As you give Jorek the order to attack, Agronak engages him in combat. You feel a stinging pain in your chest. {newline}
    <b> {npc1} </b> "Your vow was bound by magic. Once you break a magical oath, your heart stops beating." {newline}
    The pain in your chest surges. Your breath falters. You fall to your knees.

    You are dead...
  ),
)

scene_24 = Scene.create!(
  tale: tale_1,
  story: %(
    As soon as you are untied, all of your new comrades start moving and complying with their assigned tasks. They seem to obey you, at the very least. But none of them trade words with you.
  ),
)

scene_25 = Scene.create!(
  tale: tale_1,
  story: %(
    <b> {npc1} </b> "You have more faith than I do in the hearts of men, captain." {newline}
    Jorek moves towards you, keeping a watchful eye on your new companions. He grabs a knife and cuts your bindings. {newline}
    <b> {npc1} </b> "I hope they do not slit our throats in the night. I will sleep with one eye open for the foreseeable future. Let us tend to our fallen." {newline}
    As soon as you are untied, all of your new comrades start moving and complying with their assigned tasks. They seem to obey you, at the very least. But they only trade passing words with you.
  ),
)

scene_26 = Scene.create!(
  tale: tale_1,
  story: %(
    <b> {npc1} </b> "I won't miss Ziraldo much, to be frank. But Halia deserved better. At least I managed to get their leader... An elven noble? I did not even know such a thing existed. Anyways, I'm sorry I couldn't find an opening sooner, captain." {newline}
    He starts dragging the bodies of Halia and Ziraldo, and arranges them neatly into a pile, surrounded by leaves, twigs, and firewood from the campfire. {newline}
    <b> {npc1} </b> "This is a weird custom of yours, if you don't mind me saying. Back in Tuquoc we bury our dead; it is a form of returning them to the stone from which they came. Why do you burn your dead?" {newline}
    Jorek finishes the construction of the makeshift funeral pyre, and takes one last look at his former friends, before turning to you, awaiting your response.
  ),
)

scene_27 = Scene.create!(
  tale: tale_1,
  story: %(
    Jorek nods in comtemplation, as you move to grab a burning log from the campfire and toss it into the funeral pyre. Slowly, the fire catches on, and soon the bodies of your comrades are set ablaze. {newline}
    <b> {npc1} </b> "Should we say a few words? I knew them only a short amount of time, but it seems like the proper thing to do."
  ),
)

scene_28 = Scene.create!(
  tale: tale_1,
  story: %(
    Jorek nods in resignation, as you move to grab a burning log from the campfire and toss it into the funeral pyre. Slowly, the fire catches on, and soon the bodies of your comrades are set ablaze. {newline}
    <b> {npc1} </b> "Should we say a few words? I knew them only a short amount of time, but it seems like the proper thing to do."
  ),
)

scene_29 = Scene.create!(
  tale: tale_1,
  story: %(
    <b> {npc1} </b> "And what a struggle it will be. Slaying a dragon... I hope we are up to the task. Rest, my confrars." {newline}
    Once the funeral is complete, you and Jorek move to your tents, and he assures you he will sleep with one eye open tonight, until you can be sure the newcomers can be trusted. {newline}
    Inside your tent, the calmness of the forest takes over, and nothing but the chirping of animals can be heard. It feels almost peaceful. You are keenly aware that it is, in fact, the calm before the storm. Tomorrow you once again begin marching towards Ardrath's Hoard. {newline}
    End of Act I...
  ),
)

scene_30 = Scene.create!(
  tale: tale_1,
  story: %(
    Jorek takes your cue and remains silent as well, wathcing as the bodies burn in front of him. {newline}
    Once the funeral is complete, you and Jorek move to your tents, and he assures you he will sleep with one eye open tonight, until you can be sure the newcomers can be trusted. {newline}
    Inside your tent, the calmness of the forest takes over, and nothing but the chirping of animals can be heard. It feels almost peaceful. You are keenly aware that it is, in fact, the calm before the storm. Tomorrow you once again begin marching towards Ardrath's Hoard. {newline}
    End of Act I...
  ),
)

############################################ ATO 2 ###############################################################

scene_31 = Scene.create!(
  tale: tale_1,
  story: %(
    A few days have passed since you assumed command of the Last Legion. While your new companions have shown themselves to be capable, they are also very distant. {newline}
    Agronak seems to have little interest in conversation, Barnabas tends to keep to himself and his books, and when Valena addresses you, it is with a mocking tone. You have enjoyed the company of Jorek, and his cheerful demeanor has come back after the mourning of your late comrades. {newline}
    You and your confrars have come upon the small village of Beowode, the last settlement before officially leaving the borders of the Realm and entering the territory of the Elgenwode. It is a good opportunity to gather supplies and unwind before setting out on the trail of Ardrath's Horde once more...
  ),
)

scene_32 = Scene.create!(
  tale: tale_1,
  story: %(
    The village of Beowode is little more than a footnote on most maps, due to its faraway location from the heart of the Kingdom and negligible political and economical expression. As you and your confrars enter the small settlement, you are certain that all eyes are on you.  {newline}

    <b>{npc1}</b> "Tread carefully. We do not want to attract unwanted attention." {newline}

    <b>{npc2}</b> "These folk act as if they've never seen a band of heavily armed mean looking mercenaries walking into their town, ha!"  {newline}

    <b>{npc3}</b> "They have certainly never seen a dwarf. You should avoid trouble most out of all of us." {newline}

    <b>{npc2}</b> "Of course, sure! I am always the problem! What about you, elf? I thought most of you kind hid their pointy ears in human lands to avoid trouble?" {newline}

    <b>{npc3}</b> "This village is so far east it could just as well be elven lands. We are practically in the Elgenwode already. Trust me, I shall find no trouble mingling amongst these peasants." {newline}

    As your companions converse, the village children are the first to ignore your presence, and resume their playing. Soon, dogs and other pets lose their interest in your group, and join the kids in their endless chasing and playful screaming. {newline}

    The gaze of most of the adults linger on you, however, and the elderly folk seem to be gossiping between themselves. One thing is certain: your presence has not gone unnoticed.

  ),
)

# =============================================================================================================
# CHOICES
# =============================================================================================================

# scene 0
# Choice.create!(action: "Start your journey...", result: " ", next_scene: scene_1, scene: scene_1)

# scene 1
Choice.create!(action: '"I think you should stop worrying. Jorek can take care of himself."', result: " ", next_scene: scene_3, scene: scene_1)
Choice.create!(action: '"I think the two of you deserve each other."', result: " ", next_scene: scene_4, scene: scene_1)
Choice.create!(action: '"What do I think? I act. Let us search for him."', result: " ", next_scene: scene_2, scene: scene_1)

# scene 2
Choice.create!(action: '"You missed."', result: "", next_scene: scene_5, scene: scene_2)
Choice.create!(action: '"Show yourselves! We mean no harm!"', result: { peace: 1 }, next_scene: scene_6, scene: scene_2)
Choice.create!(action: "Lay down your arms, and instruct your companions to do the same.", result: { peace: 1 }, next_scene: scene_7, scene: scene_2)
Choice.create!(action: '"We are called The Dead Men for a reason, cowards. Strike true!"', result: "", next_scene: scene_8, scene: scene_2)

# scene 3
Choice.create!(action: '"Show yourselves! We mean no harm!"', result: "", next_scene: scene_6, scene: scene_3)
Choice.create!(action: "Lay down your arms, and instruct your companions to do the same.", result: { peace: 1 }, next_scene: scene_7, scene: scene_3)
Choice.create!(action: '"We are called The Dead Men for a reason, cowards. Strike true!"', result: "", next_scene: scene_8, scene: scene_3)

# scene 4
Choice.create!(action: "Lay down your arms, and instruct your companions to do the same.", result: { peace: 1 }, next_scene: scene_7, scene: scene_4)
Choice.create!(action: '"We are called The Dead Men for a reason, cowards. Strike true!"', result: "", next_scene: scene_8, scene: scene_4)

# scene 5
Choice.create!(action: '"Monkey? So you are elves."', result: "", next_scene: scene_9, scene: scene_5)
Choice.create!(action: '"You dare call us thieves?"', result: "", next_scene: scene_10, scene: scene_5)

# scene 6
Choice.create!(action: '"Sir Raelys? You expect me to believe you a noble?"', result: "", next_scene: scene_11, scene: scene_6)
Choice.create!(action: "Lay down your arms, and instruct your companions to do the same", result: { peace: 1 }, next_scene: scene_7, scene: scene_6)
Choice.create!(action: '"We are called The Dead Men for a reason, cowards. Strike true!"', result: "", next_scene: scene_8, scene: scene_6)

# scene 7
Choice.create!(action: "Chaos ensues...", result: "", next_scene: scene_14, scene: scene_7)

# scene 8
Choice.create!(action: "Chaos ensues...", result: "", next_scene: scene_14, scene: scene_8)

# scene 9
Choice.create!(action: '"What consequences, hare?"', result: "", next_scene: scene_12, scene: scene_9)
Choice.create!(action: '"Show yourselves! We mean no harm!"', result: { peace: 1 }, next_scene: scene_6, scene: scene_9)
Choice.create!(action: "Lay down your arms, and instruct your companions to do the same.", result: { peace: 1 }, next_scene: scene_7, scene: scene_9)
Choice.create!(action: '"We are called The Dead Men for a reason, cowards. Strike true!"', result: "", next_scene: scene_8, scene: scene_9)

# scene 10
Choice.create!(action: '"What consequences, hare?"', result: "", next_scene: scene_12, scene: scene_10)
Choice.create!(action: '"Show yourselves! We mean no harm!"', result: { peace: 1 }, next_scene: scene_6, scene: scene_10)
Choice.create!(action: '"We are called The Dead Men for a reason, cowards. Strike true!"', result: "", next_scene: scene_8, scene: scene_10)
Choice.create!(action: "Lay down your arms, and instruct your companions to do the same.", result: { peace: 1 }, next_scene: scene_7, scene: scene_10)

# scene 11
Choice.create!(action: "Lay down your arms, and instruct your companions to do the same.", result: { peace: 1 }, next_scene: scene_7, scene: scene_11)
Choice.create!(action: '"We are called The Dead Men for a reason, cowards. Strike true!"', result: "", next_scene: scene_8, scene: scene_11)

# scene 12
Choice.create!(action: "You are dead...", result: "", next_scene: scene_13, scene: scene_12)

# scene 14
Choice.create!(action: '"My friends lie dead! And so does your leader! What is the point of so much bloodshed!? Release me and we can come to terms!"', result: { peace: 1 }, next_scene: scene_15, scene: scene_14)
Choice.create!(action: '"You savages, do you have any idea who you have crossed? Release me, or Jorek will kill each and every one of you!"', result: "", next_scene: scene_16, scene: scene_14)

# scene 15
Choice.create!(action: "They talk amongst themselves...", result: "", next_scene: scene_17, scene: scene_15)

# scene 16
Choice.create!(action: "They talk amongst themselves...", result: "", next_scene: scene_17, scene: scene_16)

# scene 17
Choice.create!(action: '"You wish to ally with us? Are you completely mad?"', result: "", next_scene: scene_18, scene: scene_17)
Choice.create!(action: '"I have argued for peace from the very start! You were the ones who attacked us!"', result: {
 #ONLY IF PEACEFUL
                 }, next_scene: scene_19, scene: scene_17)

# scene 18
Choice.create!(action: '"I... accept. I will lead you. But do not believe for a moment I will forget what you have done."', result: {
 # + Bound
                 }, next_scene: scene_21, scene: scene_18)
Choice.create!(action: '"I am a Dead Man to the end. Do what you must."', result: "", next_scene: scene_20, scene: scene_18)

# scene 19
Choice.create!(action: '"I am a Dead Man to the end. Do what you must."', result: "", next_scene: scene_20, scene: scene_19)
Choice.create!(action: '"I... accept. I will lead The Last Legion. Jorek, stand down. From this moment forward these are our confrars..."', result: "", next_scene: scene_22, scene: scene_19)

# scene 20
Choice.create!(action: "You are dead.", result: "", next_scene: scene_13, scene: scene_20)

# scene 21
Choice.create!(action: '"Untie me, I command all of you! Elf, you are on watch tonight. Mage, dispose of the body of your former captain as you see fit. And you, brute, stay out of my way. Jorek, come with me, we must cremate our confrars."', result: "", next_scene: scene_24, scene: scene_21)
Choice.create!(action: '"Untie me, I command all of you! Jorek, draw your blades and help me to slay these murderers!"', result: "", next_scene: scene_23, scene: scene_21)

# scene 22
Choice.create!(action: %("We depart at first light. One of you should set up watch. The others should dispose of Sir Raelys' body according to elven tradition. We shall do the same for our fallen confrars according to our customs."), result: {}, next_scene: scene_25, scene: scene_22)

# scene 23
Choice.create!(action: "You are dead...", result: "", next_scene: scene_13, scene: scene_23)

# scene 24
Choice.create!(action: "You and Jorek move towards the bodies of your fallen companions.", result: "", next_scene: scene_26, scene: scene_24)

# scene 25
Choice.create!(action: "You and Jorek move towards the bodies of your fallen companions.", result: "", next_scene: scene_26, scene: scene_25)

# scene 26
Choice.create!(action: "Stay silent.", result: "", next_scene: scene_28, scene: scene_26)
Choice.create!(action: '"You bury your bodies to return them to the stone, you said? We burn ours, to return them to the Sun. The fire consumes the flesh, but also cleanses it, it is a ritual of purification."', result: "", next_scene: scene_27, scene: scene_26)

# scene 27
Choice.create!(action: "Remain silent.", result: "", next_scene: scene_30, scene: scene_27)
Choice.create!(action: '"There is no need to mourn the dead. Their flesh is consumed and their minds returned to the realm of God. The hardships of life are endured by the living. And so, we must remain in our struggle."', result: "", next_scene: scene_29, scene: scene_27)

# scene 28
Choice.create!(action: "Remain silent.", result: "", next_scene: scene_30, scene: scene_28)
Choice.create!(action: '"There is no need to mourn the dead. Their flesh is consumed and their minds returned to the realm of God. The hardships of life are endured by the living. And so, we must remain in our struggle."', result: "", next_scene: scene_29, scene: scene_28)

# scene 29
Choice.create!(action: "Begin Act II!", result: "", next_scene: scene_31, scene: scene_29)

# scene 30
Choice.create!(action: "Begin Act II!", result: "", next_scene: scene_31, scene: scene_30)

# scene 31
Choice.create!(action: "Head into the village.", result: "", next_scene: scene_32, scene: scene_31)

# scene 32
Choice.create!(action: '"I have a bad feeling about this. We should split up and do what we have to do quickly, then leave this town before trouble finds us."', result: "", next_scene: scene_1, scene: scene_32)
Choice.create!(action: '"What are you lot staring at?! My name is {pc_name}, and I am the captain of The Last Legion! Now clear off, lest trouble finds you!"', result: "", next_scene: scene_1, scene: scene_32)

# =============================================================================================================
# ENCOUNTER
# =============================================================================================================
# scene 1
Encounter.create!(scene: scene_1, npc: halia, npc_position: "left")
Encounter.create!(scene: scene_1, npc: ziraldo, npc_position: "right")

# scene 2
Encounter.create!(scene: scene_2, npc: halia, npc_position: "left")
Encounter.create!(scene: scene_2, npc: ziraldo, npc_position: "right")

# scene 3
Encounter.create!(scene: scene_3, npc: ziraldo, npc_position: "right")
Encounter.create!(scene: scene_3, npc: halia, npc_position: "left")

# scene 4
Encounter.create!(scene: scene_4, npc: halia, npc_position: "left")
Encounter.create!(scene: scene_4, npc: ziraldo, npc_position: "right")

# scene 5
Encounter.create!(scene: scene_5, npc: halia, npc_position: "left")
Encounter.create!(scene: scene_5, npc: ziraldo, npc_position: "right")

# scene 6
Encounter.create!(scene: scene_6, npc: halia, npc_position: "left")
Encounter.create!(scene: scene_6, npc: ziraldo, npc_position: "right")
Encounter.create!(scene: scene_6, npc: sir_raelys, npc_position: "middle")

# scene 7
Encounter.create!(scene: scene_7, npc: halia, npc_position: "left")
Encounter.create!(scene: scene_7, npc: ziraldo, npc_position: "right")
Encounter.create!(scene: scene_7, npc: sir_raelys, npc_position: "middle")

# scene 8
Encounter.create!(scene: scene_8, npc: halia, npc_position: "left")
Encounter.create!(scene: scene_8, npc: ziraldo, npc_position: "right")
Encounter.create!(scene: scene_8, npc: sir_raelys, npc_position: "middle")

# scene 9
Encounter.create!(scene: scene_9, npc: halia, npc_position: "left")
Encounter.create!(scene: scene_9, npc: ziraldo, npc_position: "right")

# scene 10
Encounter.create!(scene: scene_10, npc: halia, npc_position: "left")
Encounter.create!(scene: scene_10, npc: ziraldo, npc_position: "right")

# scene 11
Encounter.create!(scene: scene_11, npc: halia, npc_position: "left")
Encounter.create!(scene: scene_11, npc: ziraldo, npc_position: "right")
Encounter.create!(scene: scene_11, npc: sir_raelys, npc_position: "middle")

# scene 12
Encounter.create!(scene: scene_12, npc: halia, npc_position: "left")
Encounter.create!(scene: scene_12, npc: ziraldo, npc_position: "right")
Encounter.create!(scene: scene_12, npc: jorek, npc_position: "middle")

# scene 14
Encounter.create!(scene: scene_14, npc: halia, npc_position: "left")
Encounter.create!(scene: scene_14, npc: ziraldo, npc_position: "right")
Encounter.create!(scene: scene_14, npc: jorek, npc_position: "middle")

# scene 17
Encounter.create!(scene: scene_17, npc: barnabas, npc_position: "left")
Encounter.create!(scene: scene_17, npc: valena, npc_position: "middle")
Encounter.create!(scene: scene_17, npc: agronak, npc_position: "right")

# scene 18
Encounter.create!(scene: scene_18, npc: barnabas, npc_position: "left")
Encounter.create!(scene: scene_18, npc: agronak, npc_position: "right")
Encounter.create!(scene: scene_18, npc: valena, npc_position: "middle")

# scene 19
Encounter.create!(scene: scene_19, npc: valena, npc_position: "middle")
Encounter.create!(scene: scene_19, npc: barnabas, npc_position: "left")
Encounter.create!(scene: scene_19, npc: agronak, npc_position: "right")

# scene 20
Encounter.create!(scene: scene_20, npc: valena, npc_position: "middle")
Encounter.create!(scene: scene_20, npc: agronak, npc_position: "right")
Encounter.create!(scene: scene_20, npc: barnabas, npc_position: "left")

# scene 21
Encounter.create!(scene: scene_21, npc: valena, npc_position: "middle")
Encounter.create!(scene: scene_21, npc: jorek, npc_position: "right")
Encounter.create!(scene: scene_21, npc: barnabas, npc_position: "left")

# scene 22
Encounter.create!(scene: scene_22, npc: jorek, npc_position: "middle")
Encounter.create!(scene: scene_22, npc: agronak, npc_position: "right")
Encounter.create!(scene: scene_22, npc: barnabas, npc_position: "left")

# scene 23
Encounter.create!(scene: scene_23, npc: barnabas, npc_position: "left")

# scene 24
Encounter.create!(scene: scene_24, npc: valena, npc_position: "middle")
Encounter.create!(scene: scene_24, npc: agronak, npc_position: "right")
Encounter.create!(scene: scene_24, npc: barnabas, npc_position: "left")

# scene 25
Encounter.create!(scene: scene_25, npc: jorek, npc_position: "left")

# scene 26
Encounter.create!(scene: scene_26, npc: jorek, npc_position: "left")

# scene 27
Encounter.create!(scene: scene_27, npc: jorek, npc_position: "left")

# scene 28
Encounter.create!(scene: scene_28, npc: jorek, npc_position: "left")

# scene 29
Encounter.create!(scene: scene_29, npc: jorek, npc_position: "left")

# scene 30
Encounter.create!(scene: scene_30, npc: jorek, npc_position: "left")

# scene 32
Encounter.create!(scene: scene_32, npc: barnabas, npc_position: "right")
Encounter.create!(scene: scene_32, npc: jorek, npc_position: "left")
Encounter.create!(scene: scene_32, npc: valena, npc_position: "middle")

# =============================================================================================================
# POPUPS
# =============================================================================================================

Popup.create!(name: "Confraternity", description: "A band of brothers and sisters led by member of the nobility gathered together for a common cause." )

Popup.create!(name: "Ardrath's Hoard", description: "A legendary treasure stolen from elvish lands rumored to be guarded by Ardrath, one of the last living dragons." )

Popup.create!(name: "Elgenwode", description: "A vast span of untamed wilderness to which the elves were banished in ages long past." )

Popup.create!(name: "Confrars", description: "An endearing term used by members of a Confrary to address each other, similar in spirit to being called a brother or a sister." )

Popup.create!(name: "confrars", description: "An endearing term used by members of a Confrary to address each other, similar in spirit to being called a brother or a sister." )

Popup.create!(name: "monkey", description: "A derogatory term used to describe humans, due to their bearded faces and hairy bodies, similar to apes." )

Popup.create!(name: "hare", description: "A derogatory term used to describe elves, due to their long and pointed ears, similar to rabbits." )

Popup.create!(name: "Aurea Act", description: "An incredibly recent development in human-elvish relations, the Aurea Act freed all elves from slavery and allowed them to become knights." )

Popup.create!(name: "King", description: "King Edmon, the half-elven bastard child of the late King Omen, and the current leader of the Kingdom of Dalrath, who ascended to the throne following a bloody civil war." )

Popup.create!(name: "Realm", description: "The Kingdom of Dalrath, founded almost 500 years ago by the unification of Saint King Kyros, is the largest human nation ever created." )

Popup.create!(name: "Tuquoc", description: "The capital city of the Kingdom of the Dwarves, located far away in the west, under the mountains and past the great ocean.")

Popup.create!(name: "God", description: "The official religion of the human Kingdom is defined by the Church, which holds that the Sun is the personification of God, and the sacred gift of life is derived from it.")
