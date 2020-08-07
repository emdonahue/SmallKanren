history
lastStoredRun
	^ ((Dictionary new) add: (#timeStamp->(DateAndTime basicNew instVarAt: 1 put: 84663; instVarAt: 2 put: (Duration seconds: -14400 nanoSeconds: 0); instVarAt: 3 put: 2459068; instVarAt: 4 put: 320106000; yourself)); add: (#passed->((Set new) add: #testAdd; add: #testAtPut; yourself)); add: (#failures->((Set new))); add: (#errors->((Set new))); yourself)