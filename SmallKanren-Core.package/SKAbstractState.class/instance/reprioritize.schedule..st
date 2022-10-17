scheduling
reprioritize: varB schedule: valB
	"There are 5 possible states for a substitution binding: ground (val.val) free (var1.var1, var not in schedule or substitution) boundvar (var1.var2, var not in schedule) boundval (var.val, var not in schedule) scheduledvar (var1.var1|2, var in schedule) scheduledval (var.val, var in schedule). Each combination gives rise to a potentially distinct code path, documented line by line below."

	varB isGround & valB isGround ifTrue: [ ^ self ]. "ground x ground -> noop"
	varB isGround ifTrue: [ ^ self reprioritize: valB schedule: varB ]. "ground x * -> * x ground"
	valB isGround ifTrue: [ ^ self prioritizeVar: varB scheduleVar ]. "* x ground -> prioritize"
	valB val isSKVar ifTrue: [ ^ self reschedule: varB scheduleVar var: valB val ]. "* x free|schedvar|boundvar -> reschedule val" 
	(self scheduleHasDependency: valB var) ifTrue: [ ^ self reschedule: varB scheduleVar var: valB var ]. "* x schedval -> reschedule var"
	^ self prioritizeVar: varB scheduleVar. "* x boundval -> prioritize"