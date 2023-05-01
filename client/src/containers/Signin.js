import React from 'react';
import { Formik, Form, Field, ErrorMessage } from 'formik';
import { Link } from 'react-router-dom';
import * as Yup from 'yup';
import API from '../data/API';
import NavBar from '../components/NavBar';

const validationSchema = Yup.object().shape({
  email: Yup.string()
    .email('Invalid email')
    .required('Email is required'),
  password: Yup.string()
    .min(6, 'Password must be at least 6 characters')
    .required('Password is required')
});

const initialValues = {
  email: '',
  password: '',
};

const Signin = ({ signin }) => {

  const handleSubmit = (values, { setSubmitting }) => {
    API.signin(values)
      .then(data => {
        setSubmitting(false);
        if (data.error){
          alert("Email address not found");
        }
        else {
          // user is authenticated! 
          signin(values.email, data.user, data.token);
        }
      });
  };

  return (
    <div id='signin-form-container'>
     
      <div className='signin-container'>
        <Formik
          initialValues={initialValues}
          validationSchema={validationSchema}
          onSubmit={handleSubmit}
        >
          {({ isSubmitting }) => (
            <Form id='signin-form' className="text-center">
              {/* <h2 className='signin-text'><b>RETURNING USER</b></h2> */}
              <h2 className="h4 mb-4 signin-text">Login</h2>
             

              <Field 
                name='email' 
                id="defaultLoginFormEmail" 
                className="form-control mb-2 " 
                placeholder="Email" 
              />
              <div className='error-message'>

                <ErrorMessage name='email' />

              </div>
            

              <Field 
                name='password' 
                type='password'
                id="defaultLoginFormPassword" 
                className="form-control mb-4" 
                placeholder="Password" 
                
                
               />
                <div className='error-message'>

                  <ErrorMessage name='password' />

                </div>

             
              

              <button 
                className=" btn-outline" 
                id='login-btn'
                type="submit"
                disabled={isSubmitting}
              > 
                {isSubmitting ? 'Signing in...' : 'Sign me in!'}
              </button>
              <Link to='/signup'><p >Register an Account?</p></Link>
            </Form>
          )}
        </Formik>
      </div>
    </div>
  );
}

export default Signin;
