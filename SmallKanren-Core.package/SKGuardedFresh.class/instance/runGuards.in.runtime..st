laziness
runGuards: aPattern in: aState runtime: aRuntime
	| s v g |
	s := SKSubstitution empty unify: pattern with: aPattern.
	v := s reify: vars.
	g := block valueWithArguments: v.
	^ g.
	