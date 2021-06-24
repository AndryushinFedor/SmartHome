import React from "react"
import PropTypes from "prop-types"
class A_IdeasPostAbout extends React.Component {
  render () {
    return (
      <div class='IdeasAbout'>
        <p>{this.props.about}</p>
      </div>
    );
  }
}

export default A_IdeasPostAbout
