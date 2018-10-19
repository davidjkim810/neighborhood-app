import React, { Component } from 'react';
import { connect } from 'react-redux';
import PropTypes from 'prop-types';
import { createUser } from '../../actions/postActions';
import UsersIndex from './users_index';

class UsersCreate extends Component {
  constructor(props) {
    super(props);
    this.state = {
      first_name: '',
      last_name: '',
      nickname: '',
      username: '',
      password: ''
    }
  };

  handleOnSubmit = event => {
    event.preventDefault();
    const user = {
      first_name: this.state.first_name,
      last_name: this.state.last_name,
      nickname: this.state.nickname,
      username: this.state.username,
      password: this.state.password
    };
    this.props.createUser(user);
  };
  handleOnChange = event => {
    this.setState({ [event.target.name]: event.target.value })
  }

  render() {
    return (
      <div>
      <h1>Create User</h1>
      <form onSubmit={(event) => this.handleOnSubmit(event)}>
        <div>
          <label>First Name: </label><br />
          <input type="text" name="first_name" onChange={(event) => this.handleOnChange(event)} value={this.state.first_name}/>
        </div>
        <br />
        <div>
          <label>Last Name: </label><br />
          <input type="text" name="last_name" onChange={(event) => this.handleOnChange(event)} value={this.state.last_name}/>
        </div>
        <br />
        <div>
          <label>Nickname: </label><br />
          <input type="text" name="nickname" onChange={(event) => this.handleOnChange(event)} value={this.state.nickname}/>
        </div>
        <br />
        <div>
          <label>Username: </label><br />
          <input type="text" name="username" onChange={(event) => this.handleOnChange(event)} value={this.state.username} />
        </div>
        <br />
        <div>
          <label>Password: </label><br />
          <input type="password" name="password" onChange={(event) => this.handleOnChange(event)} value={this.state.password}/>
        </div>
        <br />
        <button type="submit">Submit</button>
      </form>
      </div>
    )
  }
}


export default connect(null, { createUser })(UsersCreate);
