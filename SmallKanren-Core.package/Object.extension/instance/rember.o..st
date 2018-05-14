*SmallKanren-Core
rember: x o: out
	| restNoX |
	restNoX := SKVar new.
	^ self carCdrIn: [ :y :rest | x === y & (rest === out) | (x =/= y & (out === (y cons: restNoX)) & (rest rember: x o: restNoX)) ]