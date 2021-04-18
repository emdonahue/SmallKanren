reducing
exclusion: aSKExclusionConstraint 
	^ self class new excluded: excluded; next: (next exclusion: aSKExclusionConstraint )