async function rollDice() {
  const n = document.getElementById("numDice").value;
  const sides = document.getElementById("sides").value;

  let response = await fetch(`http://localhost:8000/roll?n=${n}&sides=${sides}`);
  let data = await response.json();

  const resultDiv = document.getElementById("result");
  resultDiv.innerHTML = ""; // clear old rolls

  data.rolls.forEach(roll => {
    const dice = document.createElement("div");
    dice.classList.add("dice");

    // 🎲 Show emoji if it's a standard 6-sided dice
    if (parseInt(sides) === 6 && roll >= 1 && roll <= 6) {
      const diceFaces = ["⚀","⚁","⚂","⚃","⚄","⚅"];
      dice.textContent = diceFaces[roll - 1];
    } else {
      dice.textContent = roll;
    }

    // 🎬 Add shake animation
    dice.classList.add("shake");
    setTimeout(() => dice.classList.remove("shake"), 300);

    resultDiv.appendChild(dice);
  });
}
