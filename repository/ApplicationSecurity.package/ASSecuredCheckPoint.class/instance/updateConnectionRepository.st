statistics-actions
updateConnectionRepository
	" Private - Serialize the receiver's data "

	self wantsToWriteLog
		ifTrue: [ self repository 
						store: self machineFailCounts;
						store: self userFailCounts;
						store: self globalFailCount;
						yourself ]