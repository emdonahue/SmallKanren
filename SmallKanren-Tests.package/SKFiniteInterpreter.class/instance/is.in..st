interpreting
is: val in: typeclass
 ^ typeclass inject: SKGoal fail into: [ :g :t | g | (t === val) ]