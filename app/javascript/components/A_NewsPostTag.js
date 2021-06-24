import React from "react"
import PropTypes from "prop-types"
class A_NewsPostTag extends React.Component {
  render () {
    return (
      <div class='NewsTag'>
        <p>{this.props.tag}</p>
      </div>
    );
  }
}

export default A_NewsPostTag
