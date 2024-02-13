import { createStore, combineReducers } from 'redux';
import greetingReducer from './reducers/greetingReducer';

const rootReducer = combineReducers({
  greeting: greetingReducer,
});

const store = createStore(rootReducer);

export default store;