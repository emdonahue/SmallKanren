*SmallKanren-Core
append: s o: ls
	
	^ ((self isEmptyo) & (s === ls)) |
	 	(self carCdrIn: [ :x :rest |
			ls car: x cdrIn: [ :restPlusS |
				rest append: s o: restPlusS.
				 ]
			 ])