import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import { receiveAllPokemon, requestAllPokemon } from './actions/pokemon_actions'; 
// import * as APIUtil from './util/api_util';
// import selectAllPokemon from './reducers/selectors';
import Root from './components/root';

document.addEventListener('DOMContentLoaded', () => {
    const rootEl = document.getElementById('root');
    const store = configureStore(); 
    //TESTING 
    window.getState = store.getState;
    window.dispatch = store.dispatch; 
    // window.selectAllPokemon = selectAllPokemon;
    // window.receiveAllPokemon = receiveAllPokemon;
    window.requestAllPokemon = requestAllPokemon;
    //TESTING 

    ReactDOM.render(<Root store={store}/>, rootEl);
});