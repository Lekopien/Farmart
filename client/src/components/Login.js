import { useRef,useState, useEffect } from "react";
import { link, useNavigate, useLocation} from "react-router-dom"
import useAuth from "../hooks/useAuth";
import axios from "../api/axios";
const LOGIN_URL = "/users_login"


const Login = ()  => {
  const {setAuth}  = useAuth()

  const navigate = useNavigate();
  const location = useLocation()

  const from = location.state?.from?.pathname || "/"

  const userRef = useRef();
  const errRef  = useRef();

  const [email, setEmail] = useState('');
  const  [password, setPassword] = useState('');
  const [errMsg,  setErrMsg]  =  useState('');


useEffect(() => {
  userRef.current.focus();
}, [])

useEffect(() => {
  setErrMsg("");
}, [email,password])


const handleSubmit = async (e) => {
  e.preventDefault();

  const userData = {
    email: email,
    password: password
  }

  try {
      const response = await axios.post(LOGIN_URL,
          userData,
          {
              headers: { 'Content-Type': 'application/json' },
              // withCredentials: true
          }
      );
      const accessToken = response?.data?.accessToken;
      // const roles = response?.data?.roles;
      setAuth({ email, password, accessToken });
      setEmail('');
      setPassword('');
      navigate(from, {replace: true});

  } catch (err) {
      if (!err?.response) {
          setErrMsg('No Server Response');
      } else if (err.response?.status === 400) {
          setErrMsg('Missing Username or Password');
      } else if (err.response?.status === 401) {
          setErrMsg('Unauthorized');
      } else {
          setErrMsg('Login Failed');
      }
      errRef.current.focus();
  }
}

return (
  <section>
    <p ref={errRef} className={errMsg ? "errmsg" : "offscreen"} aria-live="assertive">{errMsg}</p>
    <h1>Sign In</h1>
    <form onSubmit={handleSubmit}>
    <label htmlFor="username">Email:</label>
        <input
            type="text"
            id="username"
            ref={userRef}
            autoComplete="off"
            onChange={(e) => setEmail(e.target.value)}
            value={email}
            required
        />
          <label htmlFor="password">Password:</label>
        <input
            type="password"
            id="password"
            onChange={(e) => setPassword(e.target.value)}
            value={password}
            required
        />
        <button>Sign In</button>
    </form>
    <p>
                Need an Account?<br />
                <span className="line">

                </span>
            </p>
  </section>
)

}



export default Login;