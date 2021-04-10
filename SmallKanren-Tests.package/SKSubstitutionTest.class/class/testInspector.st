tests
testInspector
	<script>
	| x y z |
	x := SKVar tag: #x.
	y := SKVar tag: #y.
	z := SKVar tag: #z.
	(((SKSubstitution new extend: x noOccursCheck: 42)
		extend: y noOccursCheck: x)
			extend: z noOccursCheck: (Cons car: x cdr: y)) inspect.