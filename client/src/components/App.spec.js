import React from 'react';
import { shallow } from 'enzyme';
import App from '../App';

describe('App', () => {
  it('should render a <div />', () => {
    const wrapper = shallow(<App />);
    expect(wrapper.find('div').length).toEqual(1);
  });
});
<<<<<<< HEAD
=======

>>>>>>> c5552994eb7105a3e248869868465a17f1c7afd1
