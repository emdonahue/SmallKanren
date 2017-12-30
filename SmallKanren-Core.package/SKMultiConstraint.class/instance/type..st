accessing
type: aType
	type := type type: aType.
	^ type ifNotFailed: self. "Because Type constraints may fail, we may need to return a FailedConstraint instead of the simply extended MultiConstraint."