// Generate a random 19-digit number as a string
let randomLongNumber = '';
for (let i = 0; i < 19; i++) {
    randomLongNumber += Math.floor(Math.random() * 10);
}

console.log("Random long number:", randomLongNumber);
