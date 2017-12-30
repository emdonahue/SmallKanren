initialization
setUp
	x := SKVar new.
	y := SKVar new.
	taggedX := SKVar new tag: #x.
	env := (#x cons: 1) cons: (#y cons: 2) cons.
	env1 := SKVar new.
	makeEnv1 := [ :k1 :v1 :kv1 | 
	{(k1 === #x).
	(v1 === 1).
	(kv1 === (k1 cons: v1)).
	(env1 === kv1 cons)} ] asGoal.
	env2 := SKVar new.
	makeEnv2 := [ :k2 :v2 :kv2 | 
		{ 
		k2 === #y.
		v2 === 2.
		kv2 === (k2 cons: v2).
		env2 === (kv2 cons: env1)
		
		 } ] asGoal & makeEnv1.