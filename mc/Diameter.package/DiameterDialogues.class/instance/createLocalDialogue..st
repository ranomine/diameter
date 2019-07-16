initalize
createLocalDialogue: aDialogue
| endToEndId |
		endToEndId := endToEndIdPool nextId.
		aDialogue endToEndId: endToEndId. 
		activeDialogues add: aDialogue.