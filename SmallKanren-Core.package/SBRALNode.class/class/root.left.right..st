as yet unclassified
root: aRoot left: leftTree right: rightTree
	^ self new root: aRoot; left: leftTree; right: rightTree; size: leftTree size + rightTree size + 1