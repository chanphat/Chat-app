import React from "react";  
import './index.scss'
import Header from './header/headerSideBar'
import ServiceMenu from './contentSideBar/serviceMenu'


class SideBarMenu extends React.Component {    
    render() {
        return(
            <div className="side-bar-menu">
                <Header/>
                <ServiceMenu/>
                <div className="bottom-sidebar">Not lag skype Version:0.0.1</div>
            </div>
        )
    }
}

export default SideBarMenu;
