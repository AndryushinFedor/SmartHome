import React from "react"
import PropTypes from "prop-types"
class A_Tag extends React.Component {
  render () {
    return (
      <div class='tag'>
        <p>{this.props.tag}</p>
      </div>
    );
  }
}

export default A_Tag
