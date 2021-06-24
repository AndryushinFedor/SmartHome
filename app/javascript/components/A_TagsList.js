import React from "react"
import PropTypes from "prop-types"
import A_Tag from './A_Tag'

class A_TagsList extends React.Component {
    render () {
        return (
            <div>
                {this.props.tags.map(tag => (
                    <A_Tag tag={tag}/>
                ))}
            </div>
        );
    }
}

A_TagsList.propTypes = {
    tags: PropTypes.array
};

export default A_TagsList
