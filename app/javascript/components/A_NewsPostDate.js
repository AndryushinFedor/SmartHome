import React from "react"
import PropTypes from "prop-types"

class A_NewsPostDate extends React.Component {
  render () {
    return (
      <div class='NewsDate'>
        <p>{this.props.date}</p>
      </div>
    );
  }
}

export default A_NewsPostDate
