running
setUp
	super setUp.
	"s0 low pressure -> o0 cloudy
	s1 high pressure -> o1 sunny"
	hight := SKBernoulliEstimate new p: 0.7.
	lowt := SKBernoulliEstimate new p: 0.2.
	highe := SKBernoulliEstimate new p: 0.9.
	lowe := SKBernoulliEstimate new p: 0.4.