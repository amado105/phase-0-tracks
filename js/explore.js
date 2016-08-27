// create the function calling it reverseString 

// Get the last letter by getting its index number, 
// then add it to a new string, then get the  penulitmate letter and 
// add that letter to a the string. So for each letter, take it and 
// add it to the string 


function reverse(string) {
  var newString = "";
  for (var i = string.length - 1; i >= 0; i--)
    newString += string[i];
  return newString;
}