tests
testQuery

	<script>
	| loop |
	loop := [ :x | x isEmptyo | (x carCdro: [ :a :d | a === 1 | (a === 2) | (a === 1) & (loop value: d) ]) ].
	loop asGoal runtime inspect.