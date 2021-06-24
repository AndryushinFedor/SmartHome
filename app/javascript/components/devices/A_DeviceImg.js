import React from "react"
import PropTypes from "prop-types"

class A_DeviceImg extends React.Component {
  render () {
    console.log(this.props);
    return (
      <div>
        <img src={this.props.image} alt="" className={"NewsImg" + (this.props.is_main ? 'Main' : '')}/>
      </div>
    );
  }
}

export default A_DeviceImg
