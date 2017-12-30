*SmallKanren-Core
skUnify: anArray state: aState changed: changedVars
	"Sequenceable collections should unify with any other sequenceable collection containing the same elements in the same order"
	anArray isCollection ifFalse: [ ^ nil ].
	( anArray isSequenceable & self size = anArray size ) ifFalse: [ ^ nil ].
	^ ( 1 to: self size ) 
			inject: aState
			into: [ :s :index |
				(s unify: ( self at: index ) with: ( anArray at: index ) changed: changedVars) ifNil: [ ^ nil ] ]
