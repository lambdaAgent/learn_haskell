robot (name, attack, hp) = \message -> message (name, attack, hp)
name (n, _, _) = n
attack (_,a,_) = a
hp (_, _, hp) = hp

getName aRobot = aRobot name
getAttack aRobot = aRobot attack
getHP aRobot = aRobot hp

