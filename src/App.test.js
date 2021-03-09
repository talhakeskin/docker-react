import { render, screen } from '@testing-library/react';
import App from './App';

test('renders learn react link', () => {
  render(<App />);
  const linkElement = screen.getByText(/test/i); // find 'test' test in the app.js file
  expect(linkElement).toBeInTheDocument();
});

test('renders learn react link', () => {
  render(<App />);
  const linkElement = screen.getByText(/test/i); // find 'test' test in the app.js file
  expect(linkElement).toBeInTheDocument();
});