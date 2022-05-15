inspecting
expandFreshWithModel: aModel
	^ (block valueWithArguments:
		((block argumentNames allButFirst collect: [ :n | SKVar tag: n ]) copyWithFirst: aModel)) asGoal.