import { combineReducers } from 'redux';
import neighborhoodReducer from './neighborhoodReducer';
import usersReducer from './manageUser';
import neighborhoodReducer from './manageCommunity';

export default combineReducers({
  neighborhoods: neighborhoodReducer

})
