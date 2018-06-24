running
run: aState runner: aRunner
	<type: #SKPackage type: #SKRunner returns: #SKStream>
	^ aState tabledBind: self runner: aRunner.