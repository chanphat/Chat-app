import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';
import './i18n/index'
import { Provider } from 'react-redux'
import configureStore from './store';
import * as serviceWorker from './serviceWorker';
import i18n from './i18n/index'

document.title = i18n.t('app_title')
ReactDOM.render(
  <Provider store={configureStore()}>
    <App />
 </Provider>,
  document.getElementById('root')
);

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: https://bit.ly/CRA-PWA
serviceWorker.unregister();
