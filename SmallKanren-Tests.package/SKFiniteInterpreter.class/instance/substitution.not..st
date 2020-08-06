substitution
substitution: a not: b

	"Two substitutions are not equal if any number of elements are not equal. To get this to succeed only once, we need to explicitly enumerate all possible ways two substitutions could be not equal, eg element 1 != 1, element 1 != 1 AND 2 !=2, etc. We do this by considering all binary strings of length equal to the number of variables except the string of all 1's. For each string, the variables at that index are equal if 1 and not equal if 0, and the whole string is disequal if all of those conditionsa re true (conjunction). We disjoin all these strings of conjunctions, to enumerate all possible ways two substitutions can be disequal."

	| aVars bVars abVars goal |
	aVars := self fresh: self vars.
	bVars := self fresh: self vars.
	abVars := aVars collectWithIndex: [ :v :i | {v. bVars at: i} ].

	goal := (0 to: 2 ** (self vars size) - 2) collect: [ :i | "There are 2^n - 1 bit strings of length n that contain 0's. -2 here because we start at 0."
		abVars collectWithIndex: [ :v :j | 
			2 ** (j - 1) & i > 0 "2^j is the bit flag for bit string position j. -1 here because SmallTalk indexing."
			ifTrue: [ v first === v second ] 
			ifFalse: [ self not: v first equals: v second type: self any ]] ].
	
	^ {a === aVars. b === bVars.
	goal inject: false asGoal into: [ :or :ands |
		or | (ands inject: true asGoal into: [:and :unify | 
			and & unify])]} asGoal