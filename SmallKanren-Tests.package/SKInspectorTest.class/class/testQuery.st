tests
testQuery
	<script>
	[ :one :two | (one carCdrIn: [ :a :d | a === 1 & d isEmptyo ]) & (two carCdrIn: [ :a :d | a === 1 & d isEmptyo ]) ] asGoal runner inspect