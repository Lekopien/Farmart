import React, { Component } from 'react';
import {Link} from 'react-router-dom'

class HomePage extends Component {

    render() { 
        return ( 
        <div >
            <div id="intro">
                <div className="mask rgba-light-light">
                    <div className="container d-flex align-items-center justify-content-center h-100">
                        <div className="row d-flex justify-content-center text-center">
                            <div className="col-md-10">
                                <h2 className="display-2 font-weight-bold pt-5 mb-2 landing-header" >FarmArt</h2>
                                <hr className="hr-light"/>
                                <h3 className=" my-4 landing-comment">Connection Between Farmer and Client made EASIER.</h3>
                                <Link to='/signin'><button  id='farmer-btn' type="button" className=" btn btn-white farmer-btn">GET STARTED</button></Link>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <main className="mt-5">
                <div className="container">
                    <section id="best-features" className='text-center'>
                        <h2 className="mb-5 font-weight-bold">How it works?</h2>
                        <div className="row d-flex justify-content-center mb-4">
                            <div className="col-md-8">
                                <p className='grey-text'>Farms to peeps is a online farmer's market. As a farmer you can sell your products. As a peep, you have access to artisanal and fresh produces online. Let's dive in.  </p>
                            </div>
                        </div>
                        <div className="row">
                            <div className="col-md-4 mb-1">
                                <i className="fas fa-carrot"></i>
                                <h4 className="my-4">Farmers</h4>
                                <p>Are you a farmer? Sell your products online. Connect with local consumers. Spread your goods!</p>
                            </div>
                            <div className="col-md-4 mb-1">
                                <i className="fas fa-heart"></i>
                                <h4 className="my-4">People</h4>
                                <p>Discover new ingredients, nourish your body & mind, get creative in the kitchen and enjoy convenient home delivery</p>
                            </div>
                            <div className="col-md-4 mb-1">
                                <i className="fas fa-users"></i>
                                <h4 className="my-4">Build a conscious community</h4>
                                <p>Eat local. Reduce your carbon print. Be a conscious human being for the planet. Be close to your values.</p>
                            </div>
                        </div>
                    </section>
                    <hr className="my-5"/>
                    <section className='text-center'>
                        <h1><b>Shop the goods!</b></h1>
                        <br></br>
                    <div className="row">
                        <div className="col-lg-4 col-md-12 mb-4">
                        <div className="view overlay z-depth-1-half">
                            <img src="https://images.unsplash.com/photo-1529007328922-d323f83de273?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80" className="img-fluid" alt='example'/>
                            <Link to='/products'>
                            <div className="mask rgba-white-slight"></div>
                            </Link>
                        </div>
                        <h4 className="my-4 font-weight-bold">Local Farms</h4>
                        <p className="grey-text"></p>
                        </div>
                        <div className="col-lg-4 col-md-6 mb-4">
                        <div className="view overlay z-depth-1-half">
                            <img src="https://images.unsplash.com/photo-1463490093487-b0ffe9b8e140?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80" className="img-fluid" alt='example2'/>
                                <Link to ='/products'>
                                <div className="mask rgba-white-slight"></div>
                                </Link>
                            </div>
                            <h4 className="my-4 font-weight-bold">Sustainable</h4>
                            <p className="grey-text"></p>
                            </div>
                        <div className="col-lg-4 col-md-6 mb-4">
                            <div className="view overlay z-depth-1-half">
                                <img src="https://images.unsplash.com/photo-1501620123930-c0eeb6d954a3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80" className="img-fluid" alt='example2'/>
                                <Link to='/products'>
                                <div className="mask rgba-white-slight"></div>
                                </Link>
                            </div>
                            <h4 className="my-4 font-weight-bold">Home deliveries</h4>
                            <p className="grey-text"></p>
                            </div>
                        </div>
                    </section>

                    <hr className="my-5"/>
                    <section id="gallery">
                    <h2 className="mb-5 font-weight-bold text-center">They love it!</h2>
                    <div className="row">
                    <div className="col-md-6 mb-4">
                        <div id="carousel-example-1z" className="carousel slide carousel-fade" data-ride="carousel">
                        <ol className="carousel-indicators">
                            <li data-target="#carousel-example-1z" data-slide-to="0" className="active"></li>
                            <li data-target="#carousel-example-1z" data-slide-to="1"></li>
                            <li data-target="#carousel-example-1z" data-slide-to="2"></li>
                        </ol>
                        <div className="carousel-inner">
                            <div className="carousel-item active">
                            <img className="d-block w-100" src="https://images.unsplash.com/photo-1469365897239-504fabc9b11b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2000&q=80" alt="First slide"/>
                            </div>
                        </div>
                        </div>
                        </div>

                        <div className="col-md-6">
                                <h6 className="pb-1"><i className="fas fa-heart"></i><strong> Farmer </strong></h6>
                            <h4 className="mb-3"><strong>So convenient!</strong></h4>
                            <p>Before using Farms to peeps, I wasn't able to reach as many people as I would like to.</p>
                            <p>Farms to Peeps allows me to easily sell my products online, and I am proud to be part of such a community!</p>
                            <p>by <strong>Diogo Costa</strong>, 26/08/2016</p>
                        </div>
                    </div>

                    </section>

                    <hr className="my-5"/>

                    <section id="contact">
                    <h2 className="mb-5 font-weight-bold text-center">Contact us</h2>

                        <div className="row">

                        <div className="col-lg-7 col-md-12">

                        <form className="p-5 grey-text">
                            <div className="md-form form-sm"> <i className="fas fa-user prefix"></i>
                                <input type="text" id="form3" className="form-control form-control-sm"/>
                                <label htmlFor="form3">Your name</label>
                            </div>
                            <div className="md-form form-sm"> <i className="fas fa-envelope prefix"></i>
                                <input type="text" id="form2" className="form-control form-control-sm"/>
                                <label htmlFor="form2">Your email</label>
                            </div>
                            <div className="md-form form-sm"> <i className="fas fa-tag prefix"></i>
                                <input type="text" id="form32" className="form-control form-control-sm"/>
                                <label htmlFor="form34">Subject</label>
                            </div>
                            <div className="md-form form-sm"> <i className="fas fa-pencil-alt prefix"></i>
                                <textarea type="text" id="form8" className="md-textarea form-control form-control-sm" rows="4"></textarea>
                                <label htmlFor="form8">Your message</label>
                            </div>
                            <div className="text-center mt-4">
                                <button className="btn btn-orange">Send <i className="far fa-paper-planeml-1"></i></button>
                            </div>
                        </form>
                        </div>
                    </div>
                    </section>
                </div>
            </main>         
        </div>
         );
    }
}
 
export default HomePage;