import {login} from '../api/userApi'
const LOGIN = "LOGIN"

export async function userLogin (data, callback) {
    let result = await login(data)
    // if(result.)
    callback({type: LOGIN, payload: result})
}
