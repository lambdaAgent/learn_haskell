makeChange owed given = if change > 0
											  then change 
											  else 0
											  where change = given - owed

doublePlusTwo x = doubleX + 2
								  where doubleX = x * x

costPerInch size price = price/area where area = pi * (size/2) ^ 2