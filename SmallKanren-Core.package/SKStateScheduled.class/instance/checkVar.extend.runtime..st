constraining
checkVar: bVar extend: aVar runtime: aRuntime
	^ (super checkVar: bVar extend: aVar runtime: aRuntime) prioritizeVar: aVar schedule: bVar.