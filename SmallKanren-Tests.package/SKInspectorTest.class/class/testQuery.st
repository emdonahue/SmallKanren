tests
testQuery

	<script>
	| loop |
	loop := [ :x | x isEmptyo | (x carCdrIn: [ :a :d | a === 1 | (a === 2) | (a === 1) & (loop value: d) ]) ].
	loop asGoal runner inspect.