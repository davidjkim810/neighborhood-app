import React, { Component } from 'react';
import { connect } from 'react-redux';
import PropTypes from 'prop-types';
import { fetchNeighborhoods } from '../actions/postActions';

class NeighborhoodsIndex extends Component {

  componentWillMount(){
    this.props.fetchNeighborhoods();
  }

  componentWillReceiveProps(nextProps){
    if(nextProps.newNeighborhood) {
      this.props.neighborhoods.unshift(nextProps.newNeighborhood);
    }
  }

  render() {
    const neighborhoodItems = this.props.neighborhoods.map(neighborhood => (
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

NeighborhoodsIndex.propTypes = {
  fetchNeighborhoods: PropTypes.func.isRequired,
  neighborhoods: PropTypes.array.isRequired,
  newNeighborhood: PropTypes.object
}

const mapStateToProps = state => ({
  neighborhoods: state.neighborhoods.items,
  newNeighborhood: state.neighborhoods.item
})

export default connect(mapStateToProps, { fetchNeighborhoods })(NeighborhoodsIndex);
