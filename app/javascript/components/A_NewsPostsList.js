import React from "react"
import PropTypes from "prop-types"
import A_NewsPost from './A_NewsPost'

class A_NewsPostsList extends React.Component {
    render () {
        return (
            <div class='PostFlex'>
                {this.props.posts.map(post => (
                    <A_NewsPost post={post}/>
                ))}
            </div>
        );
    }
}

A_NewsPostsList.propTypes = {
    posts: PropTypes.array
};

export default A_NewsPostsList