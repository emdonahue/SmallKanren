parsing
a: a b: b var: var val: val 

 ^ ((self is: a in: self vars) & (self isNotVar: b) & (var === a) & (val === b))
 | ((self is: b in: self vars) & (self isNotVar: a) & (var === b) & (val === a))