import React, { Component } from 'react';
import { connect } from 'react-redux';
import PropTypes from 'prop-types';
import { createNeighborhood } from '../actions/postActions';

class NeighborhoodsCreate extends Component {
  constructor(props) {
    super(props);
    this.state = {
      name: '',
      description: ''
    }
  }
  handleOnSubmit = event => {
    event.preventDefault();
    const neighborhood = {
      name: this.state.name,
      description: this.state.description
    };
    this.props.createNeighborhood(neighborhood);
  };
  handleOnChange = event => {
    this.setState({ [event.target.name]: event.target.value })
  }


  render() {
    return (
      <div>
      <h1>Add Neighborhood</h1>
      <form onSubmit={(event) => this.handleOnSubmit(event)}>
        <div>
          <label>Name: </label><br />
          <input type="text" name="name" onChange={(event) => this.handleOnChange(event)} value={this.state.name}/>
        </div>
        <br />
        <div>
          <label>Description: </label><br />
          <input type="text" onChange={(event) => this.handleOnChange(event)} name="description" value={this.state.description} />
        </div>
        <br />
        <button type="submit">Submit</button>
      </form>
      </div>
    )
  }
}

NeighborhoodsCreate.propTypes = {
  createNeighborhood: PropTypes.func.isRequired
};

export default connect(null, {createNeighborhood})(NeighborhoodsCreate);
