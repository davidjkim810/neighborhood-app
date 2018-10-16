import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import * as serviceWorker from './serviceWorker';
import { Provider } from 'react-redux';
import { BrowserRouter as Router, Route } from 'react-router-dom';
import NeighborhoodsIndex from './components/neighborhoods_index';
import NeighborhoodsCreate from './components/neighborhoods_create';
import store from './store';
import Navbar from './components/layout/Navbar';
import Home from './components/pages/Home';
import { Security, SecureRoute, ImplicitCallback } from '@okta/okta-react';


ReactDOM.render(
  <Provider store={store}>
    <Router>
      <div>
        <Navbar />
        <div className="container">
          <Route path="/neighborhoods" component={NeighborhoodsIndex} />
          <Route path="/" exact={true} component={Home}/>
        </div>
      </div>
    </Router>
  </Provider>,
document.getElementById('root')
);


// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: http://bit.ly/CRA-PWA
serviceWorker.unregister();
