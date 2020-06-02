import axios  from 'axios'

const baseApi = axios.create({
    baseURL: 'http://localhost:5000',
    timeout: 10000,
    headers: {'Accept': 'Application/json', 'Authorization': ''}
})

async function callApi(data= null, url, method, customHeader = null) {
    const options = {
        method: method,
        headers: !!customHeader ? customHeader : {'Accept': 'Application/json'},
        data: !!data ? data : null,
        url: url
      };

    let result = await baseApi(options)
    .then((Response) => {
        return Response
    }, function(error) {
        return {
            "status": 400,
            "message": "error when call api",
            "error": error
        }
    })
    return result
}

export async function login(data) {
    data  = {
        "user_name": "PhatTrinh",
        "password": "123456"
      }
    let result = await callApi(data, '/user/login', 'post')

    return result
}