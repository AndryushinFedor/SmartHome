import React from "react"
import PropTypes from "prop-types"
class A_NewsPostTitle extends React.Component {
  render () {
    return (
      <div>
        <h3>{this.props.title}</h3>
      </div>
    );
  }
}

export default A_NewsPostTitle
