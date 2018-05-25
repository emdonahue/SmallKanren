initialization
setUp
	"Define a mini relational interpreter to stress test goals."
	<todo> 
	x := SKVar new tag: #x.
	y := SKVar new tag: #y.
	env := (#x cons: 1) cons: (#y cons: 2) cons.
	eval := [ :i :e :o | 
	{{[ :v | 
	{(i === (#quote cons: v cons)).
	(v === o)} ].
	{i isSymbol.
	(lookup value: i value: e value: o)}.
	[ :cdr | 
	{(i === (#list cons: cdr)).
	(list value: cdr value: e value: o)} ]}} asGoal ].
	lookup := [ :sym :ev :val | 
	[ :k :v :rest | 
	{(ev === ((k cons: v) cons: rest)).
	{{(k === sym).
	(v === val)}.
	{(k =/= sym).
	(lookup value: sym value: rest value: val)}}} ] asGoal ].
	list := [ :i :e :o | 
	{{{i isEmptyo.
	o isEmptyo}.
	[ :a :d :va :vd | 
	{(i === (a cons: d)).
	(o === (va cons: vd)).
	(eval value: a value: e value: va).
	(list value: d value: e value: vd)} ]}} asGoal ]