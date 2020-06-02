import React, { useState, useEffect}  from "react";
import { Button, Form } from "react-bootstrap";
import '../styles/loginPage.scss'
import logo from '../../src/logo.svg';
import { useHistory } from "react-router-dom";
import { connect } from 'react-redux';
import i18n from '../i18n/index'
import enFlag from '../images/eng-flag.png'
import vnFlag from '../images/vn-flag.png'
import {userLogin} from '../actions/userAction'
import {useDispatch} from 'react-redux'
const LoginView = (props) => {
  const [user, setuser] = useState("");
  const [password, setPassword] = useState("");
  let history = useHistory();
  const dispatch = useDispatch()
  useEffect(()=>{ 
    console.log("didmount")
    return ()=>{
      console.log("unmount")
    }
  }, []);

  useEffect(()=>{
      console.log("data change")
  }, [user]);

  useEffect(()=>{
      console.log("didupdate")
  });

  function handleSubmit(event) {
    // history.push("/main")
    let data = {"ok":"ok"}
    userLogin(data,dispatch)
    // dispatch(A)
    event.preventDefault();
  }


  function validateForm() {
    return user.trim().length > 0 && password.trim().length > 0;
  }
  
  function handleSignUp() {
    console.log('click signup')
    props.changeView("SIGN_UP")
  }
  function handleForgotPW (){
    console.log('click forgotpw')
    props.changeView("FORGOT_PASSWORD")
  }
  return(
    <div className="wrapper-login">
      <img src={logo} className="logo-page" alt="logo" />
      <Form className="login-form" onSubmit={handleSubmit}>
          <Form.Group controlId="formBasicuser">
              <Form.Label>{i18n.t('user')}</Form.Label>
              <Form.Control type="text" placeholder="Enter user" value={user} onChange={e => setuser(e.target.value)}/>
          </Form.Group>
          <Form.Group controlId="formBasicPassword">
              <Form.Label>{i18n.t('password')}</Form.Label>
              <Form.Control type="password" placeholder="Password" value={password} onChange={e => setPassword(e.target.value)}/>
          </Form.Group>
          <Form.Group controlId="formBasicCheckbox">
              <Form.Check type="checkbox" label={i18n.t('remember')}/>
          </Form.Group>
          <Button className="button-submit" type="submit" disabled={!validateForm()}>{i18n.t('login')}</Button>
          <div className="tab-login">
              <div className="sign-up" onClick={()=>handleSignUp()}><span>{i18n.t('signup')}</span></div>
              <div className="forgot-pw" onClick={()=>handleForgotPW()}><span>{i18n.t('forgot_pw')}</span></div>
          </div>
      </Form>
    </div>
  )
}

const SignUpView = (props) => {
  const [user, setuser] = useState("");
  const [password, setPassword] = useState("");
  function handleSubmit() {
    console.log('click signup')
  }
  function handleSignIn() {
    props.handleSignIn("SIGN_IN")
  }
  return (
    <div className="wraper-signup">
      <div className="title-header">{'Register Account'}</div>
      <Form className="signup-form" onSubmit={()=>handleSubmit()}>
          <Form.Group controlId="formBasicuser">
              <Form.Label>{i18n.t('user')}</Form.Label>
              <Form.Control type="text" placeholder="Enter username" value={user} onChange={e => setuser(e.target.value)}/>
          </Form.Group>
          <Form.Group controlId="formBasicPassword">
              <Form.Label>{i18n.t('password')}</Form.Label>
              <Form.Control type="password" placeholder="Password" value={password} onChange={e => setPassword(e.target.value)}/>
          </Form.Group>
          <Button className="button-submit" type="submit" disabled={false}> {'SignUp'} </Button>
          <div className="tab-login">
              <div className="sign-in" onClick={()=>{handleSignIn()}}><span>{'Sign in'}</span></div>
              <div className="forgot-pw" onClick={()=>{}}><span>{'Forgot password'}</span></div>
          </div>
      </Form>
    </div>
  )
}

function LoginPage() {

    const [stateView, setStateView] = useState("LOGIN_VIEW");
    const [langCurrnet, setLangCurrent] = useState(i18n.language);

    useEffect(()=>{ 
        console.log("didmount")
        return ()=>{
            console.log("unmount")
        }
    }, []);

    useEffect(()=>{
        console.log("data change")
    }, [stateView]);

    useEffect(()=>{
        console.log("didupdate")
    });
    
    function changeView(value){
      setStateView(value)
    }

    function getView() {
      switch (stateView) {
        case "SIGN_UP":     
          return <SignUpView handleSignIn={(value)=>changeView(value)}/>
        case "FORGOT_PASSWORD":
          break;      
        default:
          return <LoginView changeView={(value)=>changeView(value)}/>
      }
    }


    function handleChangeEnglishLanguage() {
      i18n.changeLanguage('en', (err, t) => {
        if (err) return console.log('something went wrong loading', err);
        t('key'); // -> same as i18next.t
      });
      setLangCurrent('en')
    }

    function handleChangeVietNamLanguage() {
      i18n.changeLanguage('vn', (err, t) => {
        if (err) return console.log('something went wrong loading', err);
        t('key'); // -> same as i18next.t
      });
      setLangCurrent('vn')
    }

    let elementView = getView()
    return (
      <div className="wrapper-view">
        <div className="change-lang">
          <div className="lang" onClick={()=>handleChangeVietNamLanguage()}><img src={vnFlag} alt={"VN"}/></div>
          <div className="lang" onClick={()=>handleChangeEnglishLanguage()}><img src={enFlag} alt={"EN"}/></div>
        </div>
        {elementView}
      </div>
    );
}

const mapStateToProps = state => {
  return {
    user : state.user
  }
}

export default connect(mapStateToProps) (LoginPage);
