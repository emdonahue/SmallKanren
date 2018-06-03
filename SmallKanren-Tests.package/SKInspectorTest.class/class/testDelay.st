tests
testDelay
	<script>
	| one two |
	one := SKVar tag: #one.
	two := SKVar tag: #two.
	((one carCdrIn: [ :a :d | a === 1 & d isEmptyo ]) & (two carCdrIn: [ :a :d | (d isEmptyo) & (a === 2) ]) & (two carCdrIn: [ :a :d | d isEmptyo & (a === 2) ]))
		runner inspect