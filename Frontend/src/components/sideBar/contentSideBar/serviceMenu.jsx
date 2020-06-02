import React from "react";
import './index.scss'
import SearchView from './searchView/searchView'
import TabView from './tabView/tabView'
import image from  '../../../images/ok.JPG'
import { NotificationsNone} from '@material-ui/icons';

const testList= [1,2,3,4,5,6,7,8,9,10]


const ListItem = () =>{
    let testlist = [1,2,3,4,5,6,7,1,2,3,4,5,6,7,1,2,3,4,5,6,7,1,2,3,4,5,6,7,1,2,3,4,5,6,7]
    return testlist.map((item, index)=>{
        let content = "dasnkjdnaskjdnkja"
        let testDate = new Date()
        let testTime = testDate.getHours().toString() + " : " + testDate.getMinutes().toString() 
        let activeView = index === 0 ? "active" : ""
        return <li key={index} className={activeView}>

                <div className="icon-user common">
                    <img src={image} />
                </div>

                <div className="content-chat">
                    <div className="group-content">GROUP</div>
                    <div className="old-message"> OLD MESSAGE</div>
                </div>

                <div className="state-content common">
                    <div className="time-old">{testTime}</div>
                    <div className="state-message"> <NotificationsNone/></div>
                </div>
            
            </li>
    })
}

class ServiceMenu extends React.Component {
    
    render() {
        return(
            <div className="service-menu">
                <SearchView/>
                <TabView/>
                <div className="list-view">
                    <ListItem/>
                </div>
            </div>
        )
    }
}
export default ServiceMenu