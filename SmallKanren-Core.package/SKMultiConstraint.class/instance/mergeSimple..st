merging
mergeSimple: aConstraint
	"All simple constraints will defer to multi to perform the merge, so this is where we handle all simple+multi merges."
	^ (self simplify: aConstraint) consolidate: self.