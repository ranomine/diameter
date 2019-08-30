initalize
initialize
   super initialize.
   endToEndIdPool := TCAPIdPool new size: 16rFFFFFFFF.
	activeDialogues := Set new.