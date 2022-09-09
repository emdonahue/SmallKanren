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
	repeato := [ :q :v :n | n = 0 ifTrue: SKGoal fail ifFalse: [ q === v | [ repeato value: q value: v value: n-1 ]]].
	'SmallKanren-Core' asPackage signContracts.