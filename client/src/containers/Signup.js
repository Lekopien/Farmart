import React from 'react';
import { Formik, Form, Field, ErrorMessage } from 'formik';
import * as Yup from 'yup';
import API from '../data/API';

const Signup = ({ signup, history }) => {

  const initialValues = {
    email: '',
    firstName: '',
    lastName: '',
    address: '',
    phone: '',
    password: '',
    userType: ''
  };

  const validationSchema = Yup.object().shape({
    email: Yup.string().email('Invalid email').required('Required'),
    firstName: Yup.string().required('Required'),
    lastName: Yup.string().required('Required'),
    address: Yup.string().required('Required'),
    phone: Yup.string().required('Required'),
    password: Yup.string().required('Required'),
    userType: Yup.string().required('Required')
  });

  const handleSubmit = (values, { setSubmitting }) => {
    API.signup(values)
      .then(data => {
        if (data.error) {
          alert('Not working!');
        } else {
          // User is authenticated
          signup(values.email, values.userType);
          history.push('/signin');
        }
        setSubmitting(false);
      })
      .catch(error => {
        console.log(error);
        setSubmitting(false);
      });
    };
    
    return (
    <div id='signup-form-container'>
    <div className='signup-image'>hello</div>
    <div className='signup-form'>
    <div className='form-container'>
    <Formik initialValues={initialValues} validationSchema={validationSchema} onSubmit={handleSubmit}>
    {({ isSubmitting }) => (
    <Form id='signup-form' className="text-center">
    <h2>NEW USER</h2>
    <div className='user-entry'>
    <fieldset>
    <label htmlFor='userType'>User Type:</label>
    <Field as='select' name='userType' className="form-control mb-4">
    <option value=''> -- Select an option -- </option>
    <option value="farmer">I am a farmer</option>
    <option value="customer">I am a client</option>
    </Field>
    <ErrorMessage name='userType' component='div' className='text-danger' />
    </fieldset>
    </div>
    
        <fieldset>
                  <label htmlFor='firstName'>First Name:</label>
                  <Field type='text' name='firstName' id='firstName' className="form-control mb-4" />
                  <ErrorMessage name='firstName' component='div' className='text-danger' />
    
                  <label htmlFor='lastName'>Last Name:</label>
                  <Field type='text' name='lastName' id='lastName' className="form-control mb-4" />
                  <ErrorMessage name='lastName' component='div' className='text-danger' />
    
                  <label htmlFor='address'>Address:</label>
                  <Field type='text' name='address' id='address' className="form-control mb-4" />
                  <ErrorMessage name='address' component='div' className='text-danger' />
    
                  <label htmlFor='email'>Email:</label>
                  <Field type='email' name='email' id='email' className="form-control mb-4" />
                  <ErrorMessage name='email' component='div' className='text-danger' />
    
                  <label htmlFor='phone'>Phone:</label>
                  <Field type='text' name='phone' id='phone' className="form-control mb-4" />
                  <ErrorMessage name='phone' component='div' className='text-danger' />
    
                  <label htmlFor='password'>Password:</label>
                  <Field type='password' name='password' id='password' className="form-control mb-4" />
                  <ErrorMessage name='password' component='div' className='text-danger' />
                </fieldset>
    
                <button className="btn btn-outline-green btn-lg signup-btn" type="submit" disabled={isSubmitting}>
                  {isSubmitting ? 'Signing up...' : 'Sign me up!'}
                </button>
              </Form>
            )}
          </Formik>
        </div>
      </div>
    </div>
    );
    };
    
    export default Signup;
