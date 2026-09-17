| errorRaised |
errorRaised := false.
[ BoundedStack new: -1 ] on: Error do: [ :e | errorRaised := true ].
'Error raised: ', errorRaised printString
