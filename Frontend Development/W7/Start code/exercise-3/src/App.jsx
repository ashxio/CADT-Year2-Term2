import React from "react";

function App() {
  /* You will need to use many state to keep the inut values and other needs */
  const [a, setA] = React.useState("");
  const [b, setB] = React.useState("");
  const [result, setResult] = React.useState("");
  /* You will need some function to handle the key pressed and button events */
  function onA(event) {
    setA(parseFloat(event.target.value));
  }
  function onB(event) {
    setB(parseFloat(event.target.value));
  } 
  function onCompute() {
    const sum = a + b;
    setResult(sum);
  }
  return (
    <main>
      <h1>Calculator</h1>

      <label>A =</label>
      <input onKeyUp={onA} />

      <label>B =</label>
      <input onKeyUp={onB} />

      <label>A + B =</label>

      {/* When Compute buton is clicked, this input display the sum of the 2 numbers, or the error message in RED */}
      <input value={result} disabled />
      <button onClick={onCompute}>Compute</button>
    </main>
  );
}

export default App;
