merging
merge: aConstraint
	"If aConstraint is multi, it should be the one destructured and appended to self."
	^ aConstraint mergeMulti: self.