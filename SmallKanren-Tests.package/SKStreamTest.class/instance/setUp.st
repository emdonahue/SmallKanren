initialization
setUp
	'SmallKanren-Core' asPackage enforceContractC.
	repeato := [ :q :v :n | n = 0 ifTrue: SKGoal fail ifFalse: [ q === v | [ repeato value: q value: v value: n-1 ]]].