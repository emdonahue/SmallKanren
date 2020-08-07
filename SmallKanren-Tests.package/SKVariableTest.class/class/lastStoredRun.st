history
lastStoredRun
	^ ((Dictionary new) add: (#timeStamp->(DateAndTime basicNew instVarAt: 1 put: 84663; instVarAt: 2 put: (Duration seconds: -14400 nanoSeconds: 0); instVarAt: 3 put: 2459068; instVarAt: 4 put: 319373000; yourself)); add: (#passed->((Set new) add: #testSKAlphaHash; yourself)); add: (#failures->((Set new))); add: (#errors->((Set new))); yourself)