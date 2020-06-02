import React from "react";
import '../styles/mainPage.scss'
import SideBarMenu from '../components/sideBar/sideBarMenu'
import { PermMedia, Search, Call, VideoCall, PersonAdd, Attachment, PermContactCalendar, Schedule, MoreHoriz, InsertEmoticon, MoreVert} from '@material-ui/icons';
import image from '../images/ok.JPG'

const ListMessage = () => {
    let listMessage = [
        {
            "avatar": image,
            "message": "skype not lag."
        },
        {
            "avatar": image,
            "message": "skype not lag 1."
        },
        {
            "avatar": image,
            "message": "skype not lag 2."
        },
        {
            "avatar": image,
            "message": "skype not lag 3."
        },
        {
            "avatar": image,
            "message": "skype not lag 4."
        },
        {
            "avatar": image,
            "message": "skype not lag 5."
        },
        {
            "avatar": image,
            "message": "skype not lag 6."
        },
        {
            "avatar": image,
            "message": "skype not lag 7."
        },
        {
            "avatar": image,
            "message": "skype not lag 8."
        },
        {
            "avatar": image,
            "message": "skype not lag 9."
        },
        {
            "avatar": image,
            "message": "skype not lag 10."
        },
        {
            "avatar": image,
            "message": "skype not lag 11."
        },
        {
            "avatar": image,
            "message": "skype not lag 12."
        },

    ]
    
    return listMessage.map((message, index)=>{
        return(
            <div key={index} className="wrapper-message">
                <div className="user-icon">
                    <img src={message.avatar}/>
                </div>
                <div className="content-message">
                    {message.message}
                </div>
                <div className="setting-message">
                    <MoreVert/>
                </div>
            </div>
        )
    })
}


export default class MainPage extends React.Component {
    render() {
        return(
            <div className="wrapper-main">
                <SideBarMenu/>
                <div className="chat-view">
                    <div className="header-chat">
                        <div className="info-header">
                            <div className="chat-title"><span>{'Skype Not lag'}</span></div>
                            <div className="chat-media">
                                <div><span>{'100 member'}</span></div>
                                <div><span>|</span></div>
                                <div className="service-icon">
                                    <div className="icon"><PermMedia/></div>
                                    <div><span>Gallery</span></div>
                                </div>
                                <div><span>|</span></div>
                                <div className="service-icon">
                                    <div className="icon"><Search/></div>
                                    <div><span>Find</span></div>
                                </div>
                            </div>
                        </div>
                        <div className="setting-header">
                            <div className="video-call">
                                <VideoCall/>
                            </div>
                            <div className="call">
                                <Call/>
                            </div>
                            <div className="add-member">
                                <PersonAdd/>
                            </div>
                        </div>
                    </div>
                    <div className="content-chat">
                        <ListMessage/>
                    </div>
                    <div className="footer-chat">
                        <div className="wrapper-footer">
                            <div className="input common">
                                <div className="insert-icon common">
                                    <InsertEmoticon/>
                                </div>
                                <input className="input-field common" placeholder="Type a message"></input>
                            </div>
                            <div className="send-file common common-icon">
                                <Attachment/>
                            </div>
                            <div className="send-contact common common-icon">
                                <PermContactCalendar/>
                            </div>
                            <div className="schedule common common-icon">
                                <Schedule/>
                            </div>
                            <div className="setting common common-icon">
                                <MoreHoriz/>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        )
    }
}
