as yet unclassified
unbound: aVar
	"Unbound vars or vals are represented by walkBinding as bindings that bind themselves, which are impossible in the substitution proper."
	^ self key: aVar val: aVar