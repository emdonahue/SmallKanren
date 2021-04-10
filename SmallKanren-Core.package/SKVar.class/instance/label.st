printing
label
	"Give untagged vars a 4 digit random id to differentiate during debugging."
	^ self tagString , (self hash asString copyFrom: 1 to: 4).