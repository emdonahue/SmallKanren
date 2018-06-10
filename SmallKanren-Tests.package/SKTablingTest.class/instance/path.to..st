pathing
path: from to: to
	<todo> 
	"when delayed fresh goals are ready, swap one in here"
	^ [ :f :t | SKVar new car: #tmp cdrIn: [ :path | (self arc: f to: t) | ((self arc: f to: path) & (self path: path to: t)) ] ]
		tabled: #path
		o:
			{from.
			to.}.