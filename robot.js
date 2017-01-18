function robot(name, attack, hp){
	return function(message){
		return message(name, attack, hp);
	}
}

function name(n,a,hp) {return n}
function attack(n, a, hp) { return a}
function hp(n,a,hp){ return hp}

const getName = aRobot => {
	console.log(aRobot);
	return aRobot(name);
}
const getAttack = aRobot => aRobot(attack);
const getHP = aRobot => aRobot(hp);