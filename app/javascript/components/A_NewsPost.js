import React from "react"
import PropTypes from "prop-types"
import A_NewsPostImg from './A_NewsPostImg'
import A_NewsPostTag from './A_NewsPostTag'
import A_NewsPostTitle from './A_NewsPostTitle'
import A_NewsPostDate from './A_NewsPostDate'

class A_NewsPost extends React.Component {
    render () {
        return (
            <div>
                <A_NewsPostTitle title={this.props.post.title}/>
                <A_NewsPostImg image={this.props.post.image}/>
                <A_NewsPostTag tag={this.props.post.name}/>
                <A_NewsPostDate date={this.props.post.created_at}/>
            </div>
        );
    }
}

A_NewsPost.propTypes = {
    post: PropTypes.object
};

export default A_NewsPost