*SmallKanren-Core
skUnifyCons: anCons
	"For Var and ground, a cons is just a primitive."
	^ self skUnifyGround: anCons.