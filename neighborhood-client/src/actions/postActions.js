import { FETCH_NEIGHBORHOODS, NEW_NEIGHBORHOOD } from './types';

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
