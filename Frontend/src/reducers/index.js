import { combineReducers } from 'redux';
import user from './user';
import language from './languageReducer'
// import {i18nReducer}  from 'react-redux-i18n'
export default combineReducers({
    user,
    language,
    // i18nReducer 
});