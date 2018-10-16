import { combineReducers } from 'redux';
import neighborhoodReducer from './neighborhoodReducer';

export default combineReducers({
  neighborhoods: neighborhoodReducer

})
