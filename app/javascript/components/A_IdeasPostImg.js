import React from "react"
import PropTypes from "prop-types"
class A_IdeasPostImg extends React.Component {
  render () {
    return (
      <div>
        <img src={this.props.image} alt="" class="NewsImg"/>
      </div>
    );
  }
}

export default A_IdeasPostImg
