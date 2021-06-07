*SmallKanren-Core
append: s o: ls
	
	^ ((self isEmptyo) & (s === ls)) |
	 	(self carCdro: [ :x :rest |
			ls car: x cdro: [ :restPlusS |
				rest append: s o: restPlusS.
				 ]
			 ])