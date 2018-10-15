import React, { Component } from 'react';

class NeighborhoodsIndex extends Component {
  constructor(props){
    super(props);
    this.state = {
      neighborhoods: []
    }
  }
  componentWillMount() {
    fetch('http://localhost:3001/api/v1/neighborhoods')
      .then(res => res.json())
      .then(data => this.setState({ neighborhoods: data.data }));
  }
  render() {
    const neighborhoodItems = this.state.neighborhoods.map(neighborhood => (
      <div key={neighborhood.id}>
      <h3>{neighborhood.name}</h3>
      <p>{neighborhood.description}</p>
      </div>
    ));
    return (
      <div>
        {neighborhoodItems}
      </div>
    )
  };
}

export default NeighborhoodsIndex;
