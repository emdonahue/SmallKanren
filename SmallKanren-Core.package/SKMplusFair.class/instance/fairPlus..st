streaming
fairPlus: aStream
	"Only called when this mplus is actually a subcomponent of a higher level mplus, so we don't actually want to merge with our own subspaces but rather treat ourselves as an atomic space to the higher level space."
	^ aStream fairMPlus: self.