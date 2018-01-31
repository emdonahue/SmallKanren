running
run: aState
	^ (block valueWithArguments: (block argumentNames collect: [ :a | SKVar new ])) run: aState