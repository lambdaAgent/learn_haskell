cup floz = \message -> message floz
getOz aCup = aCup (\floz -> floz)
drink aCup ozDrank = cup (floz - ozDrank) 
  where floz = getOz aCup

drink aCup ozDrank = if ozDiff >= 0
	                   then cup (oz - ozDrank)
	                   else cup 0
	                   where floz = getOz aCup

isEmpty aCup = (getOz aCup) == 0
afterManySips = foldl drink coffeeCup [1,1,1,1,1]
