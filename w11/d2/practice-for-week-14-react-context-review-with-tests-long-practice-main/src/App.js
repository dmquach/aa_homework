import SelectedCoffeeBean from './components/SelectedCoffeeBean';
import SetCoffeeBean from './components/SetCoffeeBean';
import coffeeBeans from "./mockData/coffeeBeans.json";

function App() {
  return (
    <>
      <SelectedCoffeeBean />
      <SetCoffeeBean coffeeBeans={coffeeBeans}/>
    </>
  );
}

export default App;
