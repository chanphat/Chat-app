import React from "react";
import './index.scss'
import { Search, Dialpad} from '@material-ui/icons';
class SearchView extends React.Component {
    
    render() {
        return(
            <div className="search-view">
                <div className="icon-search icon-common">
                    <Search/>
                </div>
                <div className="search-field">
                    <input placeholder="People , groups, messages"/>
                </div>
                <div className="setting-search icon-common">
                    <Dialpad/>
                </div>
            </div>
        )
    }
}
export default SearchView