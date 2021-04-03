import React from "react"
import PropTypes from "prop-types"
import A_MainPostImg from './A_MainPostImg'

class A_MainPost extends React.Component {
    render () {
        return (
            <div class='News'>
                <A_MainPostImg image={this.props.post.image.url}/>
            </div>
        );
    }
}

A_MainPost.propTypes = {
    post: PropTypes.object
};

export default A_MainPost
