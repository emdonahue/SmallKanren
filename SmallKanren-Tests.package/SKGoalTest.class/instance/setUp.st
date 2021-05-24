initialization
setUp
	x := SKVar new tag: #x.
	y := SKVar new tag: #y.
	z := SKVar new tag: #z.
	s := SKState new.
	r := SKRuntime new.
	xhash := x hash asString copyFrom: 1 to: 4.
	yhash := y hash asString copyFrom: 1 to: 4.
	failure := SKStream failure.
	repeato := [ :v :q :n | n = 0 ifTrue: [ SKGoal fail ] ifFalse: [ [ :q2 | q isEmptyo | (q === (v cons: q2) & (repeato value: v value: q2 value: n - 1)) ]]].
	'SmallKanren-Core' asPackage enforceContractC.