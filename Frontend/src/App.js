import {  BrowserRouter as Router, Switch, Route } from "react-router-dom";
import React from "react";
import LoginPage from './page/loginPage';
import MainPage from './page/mainPage';

export default function App() {
    return (
      <Router>
        <Switch>
          <Route exact path="/">
            <LoginPage />
          </Route>
          <Route path="/main">
            <MainPage/>
          </Route>
        </Switch>
      </Router>
    );
};
