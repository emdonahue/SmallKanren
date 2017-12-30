growing
extendBranch: aHistory withCondeLeaf: aLeaf
	"Extends a branch with a name unique within a single conde (but not between condes! The Heuristic itself must provide for global uniqueness if desired by reconciling aLeaf with aBranch)."

	^ self extendBranch: aHistory withLeaf: aLeaf