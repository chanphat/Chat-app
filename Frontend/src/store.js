import { createStore, applyMiddleware } from 'redux';
import thunk from 'redux-thunk';
import rootReducer from './reducers/index';
// import { loadTranslations, setLocale, syncTranslationWithStore } from 'react-redux-i18n'

export default function configureStore(initialState={}) {
    const store = createStore(
    rootReducer,
    initialState,
    applyMiddleware(thunk)
    );
    // syncTranslationWithStore(store)    
    // store.dispatch(loadTranslations(translationsObject));
    // store.dispatch(setLocale('en'));
    return store
}