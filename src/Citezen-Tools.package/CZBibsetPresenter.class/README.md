A presenter for a Citezen bibset
shows the list of entries on the left and details on a given entry on the right

Simple use:
`CZBibsetPresenter on: <aBibSet>`

Alternatively, can check (and show) a boolean property on each entry and display a special icon for the entries that do check the condition

```
CZBibsetPresenter new
  entryIcon: [ :entry | (entry author value includeSubstring: 'Groucho Marx')
    ifTrue: [#smallDebug] ifFalse: [#blank]] ;
  on: <aBibset> ;
  open
```