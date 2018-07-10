printing
label
	^ self tagString , (self hash asString copyFrom: 1 to: 4).