import { FETCH_NEIGHBORHOODS, NEW_NEIGHBORHOOD } from '../actions/types';

const initialState = {
  items: [],
  item: {}
}
export default function (state = initialState, action){
  switch(action.type) {
    case FETCH_NEIGHBORHOODS:
      return {
        ...state,
        items: action.payload.data
      }
    case NEW_NEIGHBORHOOD:
    return {
      ...state,
      item: action.payload.data
    }
    default:
      return state;
  }
}
