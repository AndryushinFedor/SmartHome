import React from "react"
import PropTypes from "prop-types"
class A_DeviceTitle extends React.Component {
  render () {
    return (
      <div class='NewsTitle'>
        <h3>{this.props.title}</h3>
      </div>
    );
  }
}

export default A_DeviceTitle
