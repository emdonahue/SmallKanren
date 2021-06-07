tests
testDelay
	<script>
	| one two |
	one := SKVar tag: #one.
	two := SKVar tag: #two.
	((one carCdro: [ :a :d | a === 1 & d isEmptyo ]) & (two carCdro: [ :a :d | (d isEmptyo) & (a === 2) ]) & (two carCdro: [ :a :d | d isEmptyo & (a === 2) ]))
		runtime inspect