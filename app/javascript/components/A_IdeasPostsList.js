import React from "react"
import PropTypes from "prop-types"
import A_IdeasPost from './A_IdeasPost'

class A_IdeasPostsList extends React.Component {
    render () {
        return (
            <div>
                {this.props.ideas.map(idea => (
                    <A_IdeasPost idea={idea}/>
                ))}
            </div>
        );
    }
}

A_IdeasPostsList.propTypes = {
    ideas: PropTypes.array
};

export default A_IdeasPostsList
