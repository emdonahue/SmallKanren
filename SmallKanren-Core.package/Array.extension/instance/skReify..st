*SmallKanren-Core
skReify: aReifier
	<type: #(OrC SKSubstitution SKTermCopier SKConstraintStore) type: #Array>
	"Arrays reify their contents by sending them back to the reifier."
	^ self collect: [ :x | aReifier reify: x ].