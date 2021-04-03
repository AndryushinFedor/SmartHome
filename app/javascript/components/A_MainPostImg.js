import React from "react"
import PropTypes from "prop-types"

class A_MainPostImg extends React.Component {
  render () {
    return (
      <div>
        <img src={this.props.image} alt="" class='MainImg'/>
      </div>
    );
  }
}

export default A_MainPostImg
