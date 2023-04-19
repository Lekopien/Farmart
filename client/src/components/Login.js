import React from "react";
import {useFormik} from 'formik';
import * as Yup from 'yup';


const initialValues = {
  email: "",
  password: ""
}




const onSubmit = values => {
 e.preventDefault()
 fetch("http://localhost:users", {
  method: "POST",
  headers: {
    "Content-Type": "application/json",
    Accept: "application/json",
  },
  body: JSON.stringify({
    user: {
      username: "sylviawoods",
      password: "whatscooking",
      bio: "Sylvia Woods was an American restaurateur who founded the sould food restaurant Sylvia's in Harlem on Lenox Avenue, New York City in 1962. She published two cookbooks and was an important figure in the community.",
      avatar:
        "https://upload.wikimedia.org/wikipedia/commons/4/49/Syvia_of_Sylvia%27s_reaturant_N.Y.C_%28cropped%29.jpg",
    },
  }),
})
  .then((r) => r.json())
  .then(console.log);
}


const validationSchema = Yup.object({
  email: Yup.string().email("Invalid email Format").required("Required"),
  password: Yup.string().required("Required")
})






function Login() {
  const formik = useFormik({
    initialValues,
    onSubmit,
    validationSchema
   
  
  })
  
  return (
    <div className="login-page">
      <div className="login-image"></div>
      <div className="login-container">
      
      <div className="login-form">
      <div className="login-header">Login</div>
      <form onSubmit={formik.handleSubmit}>
        <div className="form-control">
          <label htmlFor="email">Email</label>
          <input type="text" id="email" name="email" 
          {...formik.getFieldProps('email')}
          
          />
          {formik.touched.email && formik.errors.email ? <div className="error">{formik.errors.email}</div> : null}
        </div>
        <div className="form-control">
          <label htmlFor="password">Password</label>
          <input type="text" id="password" name="password"
          {...formik.getFieldProps('password')}
          />
          {formik.touched.password && formik.errors.password ? <div className="error">{formik.errors.password}</div> : null}
        </div>
        <div className="login-button">
         <button type="submit">Login</button>

        </div>
       
      </form>
    </div>

   </div>
  
   </div>
  )
}



export default Login;