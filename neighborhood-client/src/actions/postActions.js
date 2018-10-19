import { FETCH_NEIGHBORHOODS, NEW_NEIGHBORHOOD, NEW_USER, FETCH_USERS } from './types';

export const fetchNeighborhoods = () => dispatch => {
    fetch('http://localhost:3001/api/v1/neighborhoods')
      .then(res => res.json())
      .then(neighborhoods => dispatch({
        type: FETCH_NEIGHBORHOODS,
        payload: neighborhoods
      }));
  }

export const createNeighborhood = (neighborhoodData) => dispatch => {
    fetch('http://localhost:3001/api/v1/neighborhoods', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify(neighborhoodData)
    })
    .then(res => res.json())
    .then(neighborhood => dispatch({
      type: NEW_NEIGHBORHOOD,
      payload: neighborhood
    }));
  };


export const createUser = (userData) => dispatch => {
  fetch('http://localhost:3001/api/v1/users', {
    method: 'POST',
    headers: {
      'content-type': 'application/json'
    },
    body: JSON.stringify(userData)
  })
    .then(res => res.json())
    .then(user => dispatch({
      type: NEW_USER,
      payload: user
    }));
  };

export const fetchUsers = () => dispatch => {

  fetch('http://localhost:3001/api/v1/users')
    .then(res =>
      res.json())
    .then(users => dispatch({
      type: FETCH_USERS,
      payload: users
    }));
}
