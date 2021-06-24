import React from "react"
import PropTypes from "prop-types"

class A_DevicePrice extends React.Component {
  render () {
    return (
      <div class='DevicePrice'>
        <p>{this.props.price}</p>
      </div>
    );
  }
}

export default A_DevicePrice
