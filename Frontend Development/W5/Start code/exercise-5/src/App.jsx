import Card from './components/Card.jsx';
import { BUMS } from './data.js';
function App() {
  return (
  <>
    <header>
      <h1>FOR SALE</h1>
      <p>which one would u like to buy?</p>
    </header>
    <div className="cards-view">
      <div className="cards-grid">
        {BUMS.map((bum) => (
          <Card 
            key={bum.id} 
            image={bum.image}
            name={bum.name}
            hobbies={bum.hobbies}
          />
        ))}
      </div>
    </div>
  </>
  );
}

export default App;
