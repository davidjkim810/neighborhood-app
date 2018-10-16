import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import * as serviceWorker from './serviceWorker';
import { Provider } from 'react-redux';
import { BrowserRouter as Router, Route } from 'react-router-dom';
import NeighborhoodsIndex from './components/neighborhoods_index';
import NeighborhoodsCreate from './components/neighborhoods_create';
import store from './store';

ReactDOM.render(
  <Provider store={store}>
    <Router>
      <div>
        <Route path="/neighborhoods/create" component={NeighborhoodsCreate} />
        <Route path="/"component={NeighborhoodsIndex}/>
      </div>
    </Router>
  </Provider>,
document.getElementById('root')
);


// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: http://bit.ly/CRA-PWA
serviceWorker.unregister();
