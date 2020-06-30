typeo
checkTypeo: var_type in: env o: out
	"var_type is a (var . type) pair."

	^ [ :var :type :val | 	
	{(var cons: type) === var_type.
	self walk: var env: env o: val.
	{{(self is: val type: type) & (out === env).
	(self not: val type: type) & (out === Cons empty)}}} ] asGoal