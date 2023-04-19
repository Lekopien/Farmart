import{useRef,useState,useEffect } from "react"
import { faCheck,faTimes, faInfoCircle} from "@fortawesome/free-solid-svg-icons";
import {FontAwesomeIcon} from "@fortawesome/react-fontawesome"

const USER_REGEX = /^[A-z][A-z0-9-_]{3,23}$/;
const PASSWORD_REGEX = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%]).{8,24}$/;
const EMAIL_REGEX = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
const ADDRESS_REGEX = /^(?:\+254|254|0)((1|7)(?:(?:[0–9][0–9])|(?:[0–9][0–9][0–9]))[0–9]{6})$/;


const SignUp = () => {

  const userRef = useRef();
  const errRef = useRef();

  const [user, setUser] = useState('');
  const [validName, setValidName] = useState(false);
  const [userFocus, setUserFocus] = useState(false);

  const [email, setEmail] = useState('');
  const [validEmail, setValidEmail] = useState(false);
  const [EmailFocus, setEmailFocus] = useState(false);

  const [address, setUserAddress] = useState('');
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
    setUser(USER_REGEX.test(user));
}, [user])

useEffect(() => {
  setEmail(EMAIL_REGEX.test(address));
}, [email])

useEffect(() => {
  setUserAddress(ADDRESS_REGEX.test(email));
}, [email])

useEffect(() => {
    setPassword(PASSWORD_REGEX.test(password));
    setConfirmPassword(password === confirmPassword);
}, [password, confirmPassword])

useEffect(() => {
    setErrMsg('');
}, [user, password, confirmPassword])



  return (
    <section>

    </section>
  )
}


export default SignUp;


