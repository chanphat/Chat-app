
import {userState} from  '../initState/userInitState'

export default (state = userState, action) => {
    switch (action.type) {
     case 'LOGIN':
      return {
        state
      }
     default:
      return state
    }
}