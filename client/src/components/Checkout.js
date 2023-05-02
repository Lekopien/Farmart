import React, { useState } from 'react';
import Input from './Input';
import Button from './Button';

const Checkout = () => {
  const [selectedOption, setSelectedOption] = useState('card');

  const handlePaymentOptionChange = (event) => {
    setSelectedOption(event.target.value);
  };

  return (
    <div className="checkout">
      <div className="checkout-container">
        <h3 className="heading-3">Select payment option</h3>
        <select value={selectedOption} onChange={handlePaymentOptionChange}>
          <option value="card">Credit Card</option>
          <option value="mpesa">Mpesa</option>
          <option value="paypal">PayPal</option>
        </select>
        {selectedOption === 'card' && (
          <div>
            <h3 className="heading-3">Credit card checkout</h3>
            <Input label="Cardholder's Name" type="text" name="name" />
            <Input
              label="Card Number"
              type="number"
              name="card_number"
              imgSrc="https://seeklogo.com/images/V/visa-logo-6F4057663D-seeklogo.com.png"
            />
            <div className="row">
              <div className="col">
                <Input label="Expiration Date" type="month" name="exp_date" />
              </div>
              <div className="col">
                <Input label="CVV" type="number" name="cvv" />
              </div>
            </div>
            <Button text="Place order" />
          </div>
        )}
        {selectedOption === 'mpesa' && (
          <div>
            <h3 className="heading-3">Mpesa checkout</h3>
            <Input imgSrc="https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/M-PESA_LOGO-01.svg/2560px-M-PESA_LOGO-01.svg.png"

                  label="Phone Number" type="tel" name="phone_number" />
            <Input label="Amount" type="number" name="amount" />
            <Button text="Pay with Mpesa" />
          </div>
        )}
        {selectedOption === 'paypal' && (
          <div>
            <h3 className="heading-3">PayPal checkout</h3>
            <Input imgSrc="https://newsroom.paypal-corp.com/image/PayPal_MR_ICON.png"
            label="Email address" type="text" name="email_address" />
            <Input label="Amount" type="number" name="amount" />
            <Button text="Pay with Paypal" />
          </div>
        )}
      </div>
    </div>
  );
};

export default Checkout;
