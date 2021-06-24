import React from "react"
import PropTypes from "prop-types"
import A_Device from './A_Device'

class A_DevicesList extends React.Component {
    render () {
        return (
            <div>
                {this.props.devices.map(device => (
                    <A_Device device={device}/>
                ))}
            </div>
        );
    }
}

A_DevicesList.propTypes = {
    devices: PropTypes.array
};

export default A_DevicesList