instance creation
fromPattern: aPattern
	<type: #Array returns: #SKMatchGoal>
	| vars |
	vars := OrderedCollection new.
	^ self new
		pattern: (self parsePattern: aPattern freeVars: vars);
		vars: vars.