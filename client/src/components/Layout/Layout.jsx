import React from 'react'
import {Link} from 'react-router-dom'

export default function Layout(props) {
  return (
    <div>
      <header>
        <h1>Glow Baby Glow!</h1>
        <Link to="/login">Login/Signup</Link><br></br>
        <Link to="/">Home</Link>
      </header>
      <hr />
      {props.children}
    </div>
  )
}