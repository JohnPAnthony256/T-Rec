extends Resource
class_name DinoStats

# These are the default stats for the dinosaur species.
# Calmness is how much stress the dino can have before it tries to break a fence.
# Vulnerability is how likely a dinosaur is to die when it breaks through a fence. High numbers are likely to die.
# Strength is how likely a dinosaur is to break a fence. High numbers are more likely to break through.

export(String) var species = "Raptor"
export(int) var calmness = "1"
export(int) var vulnerability = "4"
export(int) var strength = "4"
export(Image) var profile = null