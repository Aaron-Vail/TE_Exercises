function sumDouble(x, y) {
    if (x === y) {
        return 2 * (x+y);
    } else {
        return x + y;
    }
}


function hasTeen(a, b, c) {
	if (a >= 13 && a <= 19 || b >= 13 && b <= 19 || c >= 13 && c <= 19) {
		return true;
	}  
	return false;
}



function lastDigit(x, y) {
	if ((x - y) %10 == 0 || (y - x) %10 == 0) {
		return true; 
	} else {
		return false;
	}
}



function seeColor(str) {
    let match = /^(red|blue).*$/.exec(str);
    return match ? match[1] : "";
}



function middleThree(str) {
    if (str.length % 2 != 0) {
        
         mid = (str.length + 1) / 2;
         return str.slice(mid - 2, mid + 1);
         }
       return str;
}



function frontAgain(str) {
    if (str.length < 2) return false;
    return str.slice(0, 2) === str.slice(-2);
}



function alarmClock(day, isAway) {
    if (isAway) return (1 <= day && day <= 5) ? "10:00" : "off"; 
    else return (1 <= day && day <= 5) ? "7:00" : "10:00";
}


function makeMiddle(array) {
    return Array(array[array.length / 2] - 1, array[array.length / 2]);
}


function oddOnly(oddNum) {
    var array = [];
    
    for(var i = oddNum; i > 0; i-=2) {
      array.unshift(i);
    }
    
    console.log(array);
    
    return array;
  }

function weave(arr1, arr2) {
    return arr1.concat(arr2);
}


function cigarParty(cigars, isWeekend) {
    return (isWeekend && cigars >= 40) || (40 <= cigars && cigars <= 60);
}



function stringSplosion(string_in) {
    var string_array = [];
    for(var i = 1; i <= string_in.length; i++){
      var string_out = string_in.substr(0, i);
      string_array.push(string_out);
    }
    return string_array.join('');
  }


function fizzBuzz() {
    var output;
    for(var i = 1; i <= 100; i++) {
        output += '';
        if(i % 3 === 0) {
            output += 'Fizz';
        } 
        if(i % 5 === 0) {
            output += 'Buzz';
        } 
        if(i % 3 !== 0 && i % 5 !== 0) {
            output += i;
        }
        return output;
    }
}



function countValues(arr) {
    const result = {};

    arr.forEach(item => {
        if (result[item]) {
            result[item]++;
        } else {
            result[item] = 1;
        }
    });

    return result;
}


function reverseArray(array) {
    return array.map((elem, idx, arr) => arr[(arr.length - 1) - idx]);
}


function blackjack(a, b) {
    if (a > 21) a = 0;
    if (b > 21) b = 0;
  
    if (a > b) {
      return a;
    } else {
      return b;
    }
}