import React from "react"
import PropTypes from "prop-types"
import A_Logo from './A_Logo'
import A_Nav from './A_Nav'

class O_Header extends React.Component {
    render () {
        return (
            <div>
              <A_Logo/>
              <A_Nav/>
            </div>
        );
    }
}

export default O_Header
