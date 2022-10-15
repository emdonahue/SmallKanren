scheduling
reprioritize: varB schedule: valB
	"scheduled x ground -> prioritize
	 scheduled x free -> reschedule
	 scheduled x bound -> prioritize
	 scheduled x scheduled -> reschedule on second key"
		
	varB isUnbound & valB isUnbound ifTrue: [ ^ self ].
	varB isUnbound ifTrue: [ ^ self reprioritize: valB schedule: varB ].
	valB isUnbound & valB isGround ifTrue: [ 
		^ self schedule: (self schedule collect: [ :g | g removeExternals: {varB var}])].
	valB val isSKVar ifTrue: [ "Scheduled vars are always bound to a non var."
		^ self schedule: (self schedule collect: [ :g | g replace: varB var external: valB val])].
	(self scheduleHasDependency: valB var) ifTrue: [ ^ self schedule: (self schedule collect: [ :g | g replace: varB var external: valB var])].
	^ self schedule: (self schedule collect: [ :g | g removeExternals: {varB var}]).