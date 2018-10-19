import { NEW_USER, FETCH_USERS } from '../actions/types';

const initialState = {
  items: [],
  item: {}
}

export default function (state = initialState, action){

  switch(action.type) {
    case NEW_USER:
      return {
        ...state,
        items: action.payload.data
      }
    case FETCH_USERS:
      return {
        ...state,
        items: action.payload.data
      }
    default:
      return state;
  }
}
