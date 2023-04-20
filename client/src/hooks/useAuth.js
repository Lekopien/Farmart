import { useContext } from "react";
import AuthContext from "../context/AuthProider";


const useAuth = () => {
  return useContext(AuthContext);
}



export default useAuth