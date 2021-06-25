import React from "react"
import PropTypes from "prop-types"
import A_NewsPostImg from './A_NewsPostImg'
import A_NewsPostTag from './A_NewsPostTag'
import A_NewsPostTitle from './A_NewsPostTitle'
import A_NewsPostDate from './A_NewsPostDate'

class A_NewsPost extends React.Component {
    render () {
        return (
            <div class={`News ${this.props.post.color}`}>
                <span class='vote_count'>{this.props.post.votes}</span>
                {/* <A_NewsPostImg image={this.props.post.image.url} is_main={this.props.post.is_main}/> */}
                <A_NewsPostTitle title={this.props.post.title}/>
                <A_NewsPostTag tag={this.props.post.tags}/>
                {/* <A_NewsPostDate date={this.props.post.created_at.slice(0, 10)}/> */}
            </div>
        );
    }
}

A_NewsPost.propTypes = {
    post: PropTypes.object
};

export default A_NewsPost
