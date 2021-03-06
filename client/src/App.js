import Layout from "./components/Layout/Layout";
import Login from "./screens/Login/Login";
import { Switch, Route } from "react-router-dom";
import { useState } from 'react';
import { loginUser } from "./services/users";
import "./App.css";

function App() {
  const [currentUser, setCurrentUser] = useState(null);

  const handleLogin = async (formData) => {
    const userData = await loginUser(formData);
    setCurrentUser(userData);
  }

  return (
    <div className="App">
      <Layout>
        <Switch>
          <Route path='/login'>
            <Login handleLogin={handleLogin} />
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