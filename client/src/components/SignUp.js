import React from "react";
import { useFormik } from "formik";
import * as Yup from "yup"


const initialValues = {
  email: "",
  password: "",
  address: "",
  confirmpassword: ""
}




const onSubmit = values => {
  console.log('form data', values)
}


const validationSchema = Yup.object({
  name: Yup.string().required("Required"),
  email: Yup.string().email("Invalid email Format").required("Required"),
  password: Yup.string().required("Required"),
  address: Yup.string().required("Required"),
  confirmpassword: Yup.string().required("Required")
})


function SignUp() {
  const formik = useFormik({
    initialValues,
    onSubmit,
    validationSchema
   
  
  })
  
  return (
   <div className="login-container">
    <div>Sign Up</div>
    <div>
      
      <form onSubmit={formik.handleSubmit}>
      <div className="form-control">
          <label htmlFor="name">Name</label>
          <input type="text" id="name" name="name" 
          {...formik.getFieldProps('name')}
          
          />
          {formik.touched.name && formik.errors.name ? <div className="error">{formik.errors.name}</div> : null}
        </div>
        <div className="form-control">
          <label htmlFor="email">Email</label>
          <input type="text" id="email" name="email" 
          {...formik.getFieldProps('email')}
          
          />
          {formik.touched.email && formik.errors.email ? <div className="error">{formik.errors.email}</div> : null}
        </div>
        <div className="form-control">
          <label htmlFor="address">Address</label>
          <input type="text" id="address" name="address" 
          {...formik.getFieldProps('address')}
          
          />
          {formik.touched.address && formik.errors.address ? <div className="error">{formik.errors.address}</div> : null}
        </div>
        <div className="form-control">
          <label htmlFor="password">Password</label>
          <input type="text" id="password" name="password"
          {...formik.getFieldProps('password')}
          />
          {formik.touched.password && formik.errors.password ? <div className="error">{formik.errors.password}</div> : null}
        </div>

        <div className="form-control">
          <label htmlFor="confirmpassword">Confirm Password</label>
          <input type="text" id="confirmpassword" name="confirmpassword"
          {...formik.getFieldProps('confirmpassword')}
          />
          {formik.touched.confirmpassword && formik.errors.confirmpassword ? <div className="error">{formik.errors.confirmpassword}</div> : null}
        </div>
        <div className="sign-up-button">
         <button type="submit">Sign Up</button>

        </div>
        
       
      </form>
    </div>

   </div>
  )
}







export default SignUp;