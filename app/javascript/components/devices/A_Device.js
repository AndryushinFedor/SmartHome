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
                <A_DeviceTitle title={this.props.device.title}/>
                <A_DeviceTag tag={this.props.device.tags}/>
                <div class='TP'>
                    <span className='vote_count'>{this.props.device.votes}</span>
                    <A_DevicePrice price={this.props.device.price}/>
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
