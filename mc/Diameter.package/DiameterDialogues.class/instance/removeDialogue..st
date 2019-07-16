initalize
removeDialogue: aDialogue
	"There are two paths to have the connection de-registered. Deal
	with it already being dead."
	activeDialogues remove: aDialogue ifAbsent: [].