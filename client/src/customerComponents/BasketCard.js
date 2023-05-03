import React, {Component, Fragment} from 'react';

class BasketCard extends Component {

  render() {
    const {name, price, id} = this.props.product
    const basket_id = this.props.basket_id

    return (
      <Fragment>
        <div className="basket-card">
          <p className="basket-card__name font-weight-bold">{name}</p>
          <p className="basket-card__price">Ksh {price}</p>
          <button className="basket-card__delete btn btn-sm" onClick={() => this.props.deleteProduct(id, basket_id)}>Delete</button>
        </div>
      </Fragment>
    )
  }
}

export default BasketCard;
