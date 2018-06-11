running
run: aState runner: aRunner
	^ (block valueWithArguments: (block argumentNames collect: [ :a | SKVar new ])) run: aState runner: aRunner