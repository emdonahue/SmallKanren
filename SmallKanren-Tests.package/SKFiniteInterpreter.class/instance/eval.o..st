parsing
eval: prog o: out
	^ self eval: prog env: #(() ()) asConsTree o: out