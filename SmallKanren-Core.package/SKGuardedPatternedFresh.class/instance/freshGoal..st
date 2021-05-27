laziness
freshGoal: aSubstitution
	"Extract the values that have been bound to the free vars and send them to the block to generate a fresh goal."
	^ block valueWithArguments: 
		((aSubstitution reify: vars), 
			((1 to: (block argumentCount - vars size)) 
				collect: [ :i | SKTaggedVar new ])).