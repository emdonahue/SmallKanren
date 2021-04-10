*SmallKanren-Core
skReify: aReifier
	<type: #(OrC SKSubstitution SKTermCopier SKConstraintStore) returns: #Array>
	"Arrays reify their contents by sending them back to the reifier."
	^ self collect: [ :x | aReifier reify: x ].