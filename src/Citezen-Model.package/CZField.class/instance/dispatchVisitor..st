visitor
dispatchVisitor: aVisitor
	self flag: #toFix. "strange method name and why the acceptVisitor: does not do all the job"
	value acceptVisitor: aVisitor 