compareNames name1 name2 = if name1 > name2
	                             then GT
	                             else if name1 < name2
	                             	    then LT 
	                             	    else EQ

compareLastNames name1 name2 = if lastName1 == (snd name2) 
																 then compareNames (fst name1) (fst name2)
																 else compareNames lastName1 (snd name2)
																 where lastName1 = (snd name1)