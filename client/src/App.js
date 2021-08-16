import Layout from "./components/Layout/Layout";
import Login from "./screens/Login/Login";
import { Switch, Route } from "react-router-dom";
import "./App.css";

function App() {

  return (
    <div className="App">
      <Layout>
        <Switch>
          <Route path='/login'>
            <Login />
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