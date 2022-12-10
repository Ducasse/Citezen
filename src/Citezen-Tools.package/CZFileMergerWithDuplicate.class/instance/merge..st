action
merge: fileName
    |fileSaver|
    inputFiles do: [:each | self load: each].
    fileSaver := CZFileSaver new. 
    fileSaver bibset: bibset ; saveTo: fileName