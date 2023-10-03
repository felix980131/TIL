let maximum = parseInt(prompt("Enter the maximum number: "));

while (!maximum) {
  maximum = parseInt(prompt("Enter the valid number: "));
}

const targetNum = Math.floor(Math.random() * maximum) + 1;

let guess = prompt("Enter the first guess: ('q' to quit)");
let attempts = 1;

while (parseInt(guess) !== targetNum) {
  if (guess === "q") break;

  if (parseInt(guess) > targetNum) {
    guess = prompt("Too high! Enter a new guess: ");
    attempts++;
  } else if (parseInt(guess) < targetNum) {
    guess = prompt("Too low! Enter a new guess: ");
    attempts++;
  }
}

if (guess === "q") {
  console.log(`quit`);
} else {
  console.log(`You got it. It took you ${attempts} guess`);
}
