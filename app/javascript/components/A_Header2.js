import React from "react"
import PropTypes from "prop-types"

class A_Header2 extends React.Component {
  render () {
    return (
      <div>
          <h2 className='header'>{this.props.title}</h2>
      </div>
    );
  }
}

export default A_Header2
