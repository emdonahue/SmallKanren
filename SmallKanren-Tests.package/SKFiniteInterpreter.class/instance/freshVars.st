interpreting
freshVars
	^ (self vars collect: [ :v | SKVar new tag: v ]) 