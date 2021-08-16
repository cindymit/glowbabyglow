import Layout from "./components/Layout/Layout";
import { Switch, Route } from "react-router-dom";
import "./App.css";

function App() {

  return (
    <div className="App">
      <Layout>
        <Switch>
          <Route path='/login'>
            <h3>Login/Sign-Up Page</h3>
          </Route>
          <Route path='/'>
            <h3>Homepage</h3>
          </Route>
        </Switch>
      </Layout>
    </div>
  );
}

export default App;