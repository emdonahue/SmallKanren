scheduling
add: aVar schedule: aFresh
	<todo> "deliberate on whether fresh needs to hold its own var or whether that should be a container class"
	| fresh sch |
	fresh := aFresh var: aVar.
	sch := schedule rejectOne: 
		[ :f | (f isGuarding: aVar) 
			ifTrue: [ fresh := f compress: aFresh. true ]].
	^ self copy schedule: (sch add: fresh).
		
	"cp := (schedule detect: [ :x | x isCons ifTrue: [ x car = aVar ]] ifNone: [ nil ]).
	ncp := cp ifNil: [ aVar cons: aFresh ] ifNotNil: [ aVar cons: (cp cdr compress: aFresh) ].
	^ self copy schedule: ((schedule remove: cp) add: ncp)."