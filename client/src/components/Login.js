import React from "react";
import {useFormik} from 'formik';
import * as Yup from 'yup';


const initialValues = {
  email: "",
  password: ""
}




const onSubmit = values => {
  console.log('form data', values)
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