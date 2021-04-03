import React from "react"
import PropTypes from "prop-types"
class A_IdeasPostTitle extends React.Component {
  render () {
    return (
      <div>
        <h3 class='ideas'>{this.props.title}</h3>
      </div>
    );
  }
}

export default A_IdeasPostTitle
