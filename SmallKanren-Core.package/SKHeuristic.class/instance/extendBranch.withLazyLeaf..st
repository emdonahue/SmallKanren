growing
extendBranch: aBranch withLazyLeaf: aLeaf
	"Extends the branch with a unique leaf based on the hashed source code of the Lazy block."

	^ self extendBranch: aBranch withLeaf: aLeaf