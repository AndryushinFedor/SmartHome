import React from "react"
import PropTypes from "prop-types"
import A_IdeasPostImg from './A_IdeasPostImg'
import A_IdeasPostAbout from './A_IdeasPostAbout'
import A_IdeasPostTitle from './A_IdeasPostTitle'
import A_IdeasPostUsername from './A_IdeasPostUsername'

class A_IdeasPost extends React.Component {
    render () {
        return (
            <div class='Ideas'>
                <A_IdeasPostImg image={this.props.idea.image.url} is_main={this.props.idea.is_main}/>

                <a href={`posts/${this.props.idea.id}`}>
                  <A_IdeasPostTitle title={this.props.idea.title}/>
                </a>
                <A_IdeasPostAbout about={this.props.idea.tags}/>
                <A_IdeasPostUsername about={this.props.idea.author}/>
                <A_IdeasPostUsername about={this.props.idea.votes}/>
            </div>
        );
    }
}

A_IdeasPost.propTypes = {
    idea: PropTypes.object
};

export default A_IdeasPost
