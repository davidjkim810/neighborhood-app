import React, { Component } from 'react';
import { connect } from 'react-redux';
import { fetchUsers } from '../../actions/postActions';

class UsersIndex extends Component {
  componentWillMount(){
    this.props.fetchUsers();
  }

  componentWillReceiveProps(nextProps){

    if(nextProps.newUser) {
      this.props.users.unshift(nextProps.newUser);
    }
  }

  render() {
    const userItems = this.props.users.map(user => (
      <div key={user.id}>
      <h3>{user.first_name}</h3>
      <p>{user.last_name}</p>
      <p>{user.nickname}</p>
      <p>{user.username}</p>
      </div>
    ));
    return (
      <div>
        {userItems}
      </div>
    )
  };
}

const mapStateToProps = state => ({
  users: state.users.items,
  newUser: state.users.item
})

export default connect(mapStateToProps, { fetchUsers })(UsersIndex);
