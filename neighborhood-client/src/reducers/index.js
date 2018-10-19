import { combineReducers } from 'redux';
import neighborhoodReducer from './neighborhoodReducer';
import userReducer from './userReducer';

export default combineReducers({
  neighborhoods: neighborhoodReducer,
  users: userReducer

})
