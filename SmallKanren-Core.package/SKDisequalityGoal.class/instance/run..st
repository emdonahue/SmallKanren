running
run: aState
	"Since Disequalities do not use the current value in their disunification check, we can just pass in a nil."

	^ self constraint checkIn: aState