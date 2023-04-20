import{useRef,useState,useEffect } from "react"
import { faCheck,faTimes, faInfoCircle} from "@fortawesome/free-solid-svg-icons";
import {FontAwesomeIcon} from "@fortawesome/react-fontawesome"
import axios from "../api/axios";
import { useNavigate, useLocation } from "react-router-dom";

const USER_REGEX = /^[A-z][A-z0-9-_]{3,23}$/;
const PASSWORD_REGEX = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%]).{8,24}$/;
const EMAIL_REGEX = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
const ADDRESS_REGEX = /^(?:\+254|254|0)((1|7)(?:(?:[0–9][0–9])|(?:[0–9][0–9][0–9]))[0–9]{6})$/;
const SIGNUP_URL = '/users'


const SignUp = () => {
  const navigate = useNavigate();
  const location = useLocation()

  const from = location.state?.from?.pathname || "/login"

  const userRef = useRef();
  const errRef = useRef();

  const [user, setUser] = useState('');
  const [validName, setValidName] = useState(false);
  const [userFocus, setUserFocus] = useState(false);

  const [email, setEmail] = useState('');
  const [validEmail, setValidEmail] = useState(false);
  const [EmailFocus, setEmailFocus] = useState(false);

  const [address, setAddress] = useState('');
  const [validAddress, setValidAddress] = useState(false);
  const [AddressFocus, setAddressFocus] = useState(false);

  const [password, setPassword] = useState('');
  const [validPassword, setValidPassword] = useState(false);
  const [passwordFocus, setPasswordFocus] = useState(false);

  const [confirmPassword, setConfirmPassword] = useState('');
  const [validMatch, setValidMatch] = useState(false);
  const [matchFocus, setMatchFocus] = useState(false);

  const [errMsg, setErrMsg] = useState('');
  const [success, setSuccess] = useState(false);

  useEffect(() => {
    userRef.current.focus();
}, [])

useEffect(() => {
    setValidName(USER_REGEX.test(user));
}, [user])

useEffect(() => {
  setValidEmail(EMAIL_REGEX.test(email));
}, [email])

useEffect(() => {
  setValidAddress(address);
}, [email])

useEffect(() => {
        setValidPassword(PASSWORD_REGEX.test(password));
        setValidMatch(password === confirmPassword);
}, [password, confirmPassword])

useEffect(() => {
    setErrMsg('');
}, [user, password, confirmPassword])


const  handleSubmit = async (e) => {
  e.preventDefault();

  const v1 = USER_REGEX.test(user);
  const v2 = PASSWORD_REGEX.test(password)

  const userData = {
    name: user,
    password: password,
    email: email,
    address: address
  }

  console.log(userData)
  if (!v1 || !v2) {
    setErrMsg("Invalid Entry");
    return;
  }
  try {
    const response = await axios.post(SIGNUP_URL,
      userData,
      {
        headers: { 'Content-Type': 'application/json'},
        // withCredentials: true
      })
      console.log(user)
      setSuccess(true)
      navigate(from, {replace: true});

  } catch (err) {
    if(!err?.response) {
      setErrMsg("No server Response");
    } else if (err.response?.status === 409) {
      setErrMsg("Username Taken")
    }
    errRef.current.focus();

  }

}



  return (
    <section>
    <p ref={errRef} className={errMsg ? "errmsg" : "offscreen"} aria-live="assertive">{errMsg}</p>
    <h1>Register</h1>
    <form onSubmit={handleSubmit} >
        <label htmlFor="username">
            Username:
            <FontAwesomeIcon icon={faCheck} className={validName ? "valid" : "hide"} />
            <FontAwesomeIcon icon={faTimes} className={validName || !user ? "hide" : "invalid"} />
        </label>
        <input
            type="text"
            id="username"
            ref={userRef}
            autoComplete="off"
            onChange={(e) => setUser(e.target.value)}
            required
            aria-invalid={validName ? "false" : "true"}
            aria-describedby="uidnote"
            onFocus={() => setUserFocus(true)}
            onBlur={() => setUserFocus(false)}
        />
        <p id="uidnote" className={userFocus && user && !validName ? "instructions" : "offscreen"}>
            <FontAwesomeIcon icon={faInfoCircle} />
            4 to 24 characters.<br />
            Must begin with a letter.<br />
            Letters, numbers, underscores, hyphens allowed.
        </p>

        <label htmlFor="email">
            Email:
            <FontAwesomeIcon icon={faCheck} className={validEmail ? "valid" : "hide"} />
            <FontAwesomeIcon icon={faTimes} className={validEmail || !email ? "hide" : "invalid"} />
        </label>
        <input
            type="text"
            id="email"

            autoComplete="off"
            onChange={(e) => setEmail(e.target.value)}

            required
            aria-invalid={validName ? "false" : "true"}
            aria-describedby="uidnote"
            onFocus={() => setEmailFocus(true)}
            onBlur={() => setEmailFocus(false)}
        />
        <p id="uidnote" className={EmailFocus && email && !validEmail ? "instructions" : "offscreen"}>
            <FontAwesomeIcon icon={faInfoCircle} />
            Must include valid Email.<br />

        </p>


        <label htmlFor="password">
            Password:
            <FontAwesomeIcon icon={faCheck} className={validPassword ? "valid" : "hide"} />
            <FontAwesomeIcon icon={faTimes} className={validPassword || !password ? "hide" : "invalid"} />
        </label>
        <input
            type="password"
            id="password"
            onChange={(e) => setPassword(e.target.value)}

            required
            aria-invalid={validPassword ? "false" : "true"}
            aria-describedby="pwdnote"
            onFocus={() => setPasswordFocus(true)}
            onBlur={() => setPasswordFocus(false)}
        />
        <p id="pwdnote" className={passwordFocus && !validPassword ? "instructions" : "offscreen"}>
            <FontAwesomeIcon icon={faInfoCircle} />
            8 to 24 characters.<br />
            Must include uppercase and lowercase letters, a number and a special character.<br />
            Allowed special characters: <span aria-label="exclamation mark">!</span> <span aria-label="at symbol">@</span> <span aria-label="hashtag">#</span> <span aria-label="dollar sign">$</span> <span aria-label="percent">%</span>
        </p>


        <label htmlFor="confirm_pwd">
            Confirm Password:
            <FontAwesomeIcon icon={faCheck} className={validMatch && confirmPassword ? "valid" : "hide"} />
            <FontAwesomeIcon icon={faTimes} className={validMatch || !confirmPassword ? "hide" : "invalid"} />
        </label>
        <input
            type="password"
            id="confirm_pwd"
            onChange={(e) => setConfirmPassword(e.target.value)}

            required
            aria-invalid={validMatch ? "false" : "true"}
            aria-describedby="confirmnote"
            onFocus={() => setMatchFocus(true)}
            onBlur={() => setMatchFocus(false)}
        />
        <p id="confirmnote" className={matchFocus && !validMatch ? "instructions" : "offscreen"}>
            <FontAwesomeIcon icon={faInfoCircle} />
            Must match the first password input field.
        </p>

        <label htmlFor="address">
            Address:
            {/* <FontAwesomeIcon icon={faCheck} className={validAddress ? "valid" : "hide"} />
            <FontAwesomeIcon icon={faTimes} className={validAddress || !address ? "hide" : "invalid"} /> */}
        </label>
        <input
            type="text"
            id="address"

            autoComplete="off"
            onChange={(e) => setAddress(e.target.value)}
            required
            aria-invalid={validName ? "false" : "true"}
            aria-describedby="uidnote"
            onFocus={() => setAddressFocus(true)}
            onBlur={() => setAddressFocus(false)}
        />
        <p id="uidnote" className={AddressFocus && address && !validAddress ? "instructions" : "offscreen"}>
            <FontAwesomeIcon icon={faInfoCircle} />
            4 to 24 characters.<br />
            Must begin with a letter.<br />
            Letters, numbers, underscores, hyphens allowed.
        </p>

        <button disabled={!validName || !validPassword || !validMatch ? true : false}>Sign Up</button>
    </form>
    <p>
        Already registered?<br />
        <span className="line">
            {/* <Link to="/">Sign In</Link> */}
        </span>
    </p>
</section>
  )
}


export default SignUp;