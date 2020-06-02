import React from "react"; 
import './index.scss'
import {ThreeDots} from 'react-bootstrap-icons'
import image from  '../../../images/ok.JPG'

function IconHeader (props) {
    return(
        <ThreeDots/>
    )
}

class HeaderSideBar extends React.Component {    
    render() {
        let nameUser = "Trịnh Chấn Phát"
        return(
            <div className="header-side">

                <div className="icon-user">
                    <img src={image} alt={"icon-user"}/>
                </div>

                <div className="name-user common">{nameUser}</div>

                <div className="meunu-setting common">
                    <IconHeader size={10}/>
                </div>

            </div>
        )
    }
}

export default HeaderSideBar;
