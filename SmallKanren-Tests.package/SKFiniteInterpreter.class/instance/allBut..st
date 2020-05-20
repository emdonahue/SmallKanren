parsing
allBut: x
 ^ self all reject: [ :a | a = x ]