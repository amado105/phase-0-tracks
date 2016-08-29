

// first create the array. I need to find out which has the longest length so I need 
// to compare each string to every other string. So I need to loop through each item 
// in the array. Compare the first item with the second item, the longer of those two 
// will be compared to the third item, and then so on and so on. 
//  If the first item is a string then set it equal to a new variable, and compare 
// this new variable to the second string, from their set the longer string to this 
// new variable and then go on and go on. 

var arr = ["long phrase","longest phrase","longer phrase", "longester phrase"];

function longestWord(array) {
var compareLength = 0;
var longest;
for (var i = 0; i < arr.length; i++ ) {
	if (arr[i].length > compareLength) {
		compareLength = arr[i].length;
		longest = arr[i];
	}
}
return longest;
}

console.log(longestWord(arr));