testsForInstances
testValueClass
	| string |
	string := {CZString . CZMacroReference . CZCompositeValue}.
	self assert: (entry at:#author) valueClass equals: CZPeople.
	self assert: (string includes: (entry at:#title) valueClass).
	self assert: (entry at:#year) valueClass equals: CZInteger.
	self assert: (string includes: (entry at:#annotation) valueClass).
	
	self assert: (entry at:#undefined) valueClass equals: CZValue
	