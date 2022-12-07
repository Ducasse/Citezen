accessing
filter: author
      |listFilter|
     listFilter := bibset new.
     bibset do: [:each | (each title = #author) ifTrue:  [listFilter add: each]].
        
    ^ listFilter