Lifecycle:
- DelayedGoal runs
	- self checkAgainst: variable in: state
	- state delay: variable with: self
	- state asDelayed constrain: variable with: self
- Constraint is fired
	- state undelay "returns pure state if no more delayCs- found" 
	- run the block and bind state to it