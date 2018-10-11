import { combineReducers } from "redux";
import itemsReducer from './manageItem';
import usersReducer from './manageUser';
import transactionsReducer from './manageTransaction';
import communitiesReducer from './manageCommunity';

const rootReducer = combineReducers({
  items: itemsReducer,
  users: usersReducer,
  transactions: transactionsReducer,
  communities: communitiesReducer

})

export default rootReducer;
