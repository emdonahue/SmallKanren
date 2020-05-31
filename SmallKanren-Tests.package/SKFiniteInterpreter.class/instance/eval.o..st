interpreting
eval: prog o: out
	^ self eval: prog env: {self vars. #()} asConsTree o: out