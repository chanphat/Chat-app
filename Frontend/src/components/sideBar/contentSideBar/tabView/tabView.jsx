import React from "react";
import './index.scss'
import { Chat, Call, RecentActors, NotificationsNone, VideoCall, RateReview} from '@material-ui/icons';

const HeaderButton = (props) => {
    let result = !!props.length ? props : [1, 2]

    return result.map((item, index) => {
        let displayText = item === 1 ? "Meet Now" : "New Chat"
        let icon = item === 1 ? <VideoCall/> : <RateReview/>
        return (
            <div key={index} className="button-header">
                <div>{icon}</div>
                <span>{displayText}</span>
            </div>
        )
    })
}


class TabView extends React.Component {
    
    render() {
        return(
            <div className="wrapper-tabview">
                <div className="tab-view">
                    <div className="tab-item">
                        <Chat/>
                        <span>Chat</span>
                    </div>
                    <div className="tab-item">
                        <Call/>
                        <span>Calls</span>
                    </div>
                    <div className="tab-item">
                        <RecentActors/>
                        <span>Contacs</span>
                    </div>
                    <div className="tab-item">
                        <NotificationsNone/>
                        <span>Notifications</span>
                    </div>
                </div>
                <div className="header-list">
                    <HeaderButton/>
                </div>
            </div>
        )
    }
}
export default TabView