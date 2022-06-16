running
setUp
	super setUp.
	"s0 low pressure -> o0 cloudy
	s1 high pressure -> o1 sunny"
	hight := SKBernoulli new p: 0.7.
	lowt := SKBernoulli new p: 0.2.
	highe := SKBernoulli new p: 0.9.
	lowe := SKBernoulli new p: 0.4.