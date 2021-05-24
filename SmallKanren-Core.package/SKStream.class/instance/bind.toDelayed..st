delaying
bind: aVar toDelayed: aDelayedC
	<todo>
	"empty should short circuit"
	^ aDelayedC undelay: aVar bind: self