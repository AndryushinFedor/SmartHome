import React from "react"
import PropTypes from "prop-types"
import A_DeviceImg from './A_DeviceImg'
import A_DeviceTag from './A_DeviceTag'
import A_DeviceTitle from './A_DeviceTitle'
import A_DevicePrice from './A_DevicePrice'

class A_Device extends React.Component {
    render () {
        return (
            <div class='Newss'>
                <div class='NewsPrev'>
                <A_DeviceImg image={this.props.device.image.url} is_main={this.props.device.is_main}/>
                </div>
                <div class='NB'>
                <a href={`devices/${this.props.device.id}`}>
                    <A_DeviceTitle title={this.props.device.title}/>
                </a>
                <A_DeviceTag tag={this.props.device.tags}/>
                <div class='TP'>
                <div class='repCount'>
                    <img src="/images/smile.svg" alt="hh"></img>
                    <span className='vote_count'>{this.props.device.votes}</span>
                </div>
                <div class='Price'>
                    <A_DevicePrice price={this.props.device.price}/>
                    <p>&ensp;₽</p>
                </div>
                </div>
                </div>
            </div>
        );
    }
}

A_Device.propTypes = {
    device: PropTypes.object
};

export default A_Device
