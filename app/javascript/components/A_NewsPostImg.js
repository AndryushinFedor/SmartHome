import React from "react"
import PropTypes from "prop-types"

class A_NewsPostImg extends React.Component {
  render () {
    return (
      <div>
        <img src={this.props.image} alt=""/>
      </div>
    );
  }
}

export default A_NewsPostImg
