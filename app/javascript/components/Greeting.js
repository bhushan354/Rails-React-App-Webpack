import React, { useEffect, useState } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import { setGreeting } from '../redux/actions/greetingActions';

const Greeting = () => {
  const dispatch = useDispatch();
  const greetings = useSelector((state) => state.greetings);

  useEffect(() => {
    fetch('/api/all_greeting')
      .then((response) => response.json())
      .then((data) => {
        dispatch(setGreetings(data.greetings));
      })
      .catch((error) => console.error('Error fetching greetings:', error));
  }, [dispatch]);

  return (
    <div>
      <h1>All Greetings:</h1>
      <ul>
        {greetings.map((greeting, index) => (
          <li key={index}>{greeting}</li>
        ))}
      </ul>
    </div>
  );
};

export default Greeting;
