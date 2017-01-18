function robot(name, attack, hp){
	return function(message){
		return message(name, attack, hp);
	}
}

function name(n,a,hp) {return n}
function attack(n, a, hp) { return a}
function hp(n,a,hp){ return hp}

const getName = aRobot => aRobot(name)
const getAttack = aRobot => aRobot(attack);
const getHP = aRobot => aRobot(hp);

const setName = (aRobot, newName) => aRobot( (n,a,h) => robot(newName, a, h));
const setAttack = (aRobot, newAttack) => aRobot((n,a,h) => robot(n, newAttack, h));
const setHP = (aRobot, newHP) => aRobot((n,a,h) => robot(n,a,newHP));

const damage = (aRobot, attackDamage) => aRobot( (n,a,h) => robot(n,a,h-attackDamage));
const fight = (aRobot, defender) => damage(defender, (function(){
	return (getHP(aRobot) > 10) ? getAttack(aRobot) : 0
}()));
const printRobot = (aRobot) => console.log( aRobot( (n,a,h) => n + " attack: " + a + " hp: " + h ) );

const killerRobot = robot("killer", 25, 200);
const nicerRobot = robot("nicer", 15, 300);
const gentlerRobot = robot("gentler", 5, 400);
const softerRobot = robot("softer", 20, 250);
const gentleGiant = robot("Mr.Friendly", 10, 500);

const gentleGiantRound1 = fight(killerRobot, gentleGiant);
const killerRobotRound1 = fight(gentleGiant, killerRobot);
const gentleGiantRound2 = fight(killerRobotRound1, gentleGiantRound1);
const killerRobotRound2 = fight(gentleGiantRound1, killerRobotRound1);
const gentleGiantRound3 = fight(killerRobotRound2, gentleGiantRound2);
const killerRobotRound3 = fight(gentleGiantRound2, killerRobotRound2);

printRobot(gentleGiantRound1);
printRobot(killerRobotRound1);
printRobot(killerRobotRound2);
printRobot(gentleGiantRound2);
printRobot(gentleGiantRound3);
printRobot(killerRobotRound3);

const fastRobot = robot("speedy", 15, 40);
const slowRobot = robot("slowpoke", 20, 30);

const fastRobotRound1 = fight(slowRobot, fastRobot);
const slowRobotRound1 = fight(fastRobot, slowRobot);
const fastRobotRound2 = fight(slowRobotRound1, fastRobotRound1);
const slowRobotRound2 = fight(fastRobotRound1, slowRobotRound1);
const fastRobotRound3 = fight(slowRobotRound2, fastRobotRound2);
const slowRobotRound3 = fight(fastRobotRound2, slowRobotRound2);

printRobot(fastRobotRound3);
printRobot(slowRobotRound3);