// frontend/src/App.jsx
import React from 'react';
import { BrowserRouter, Routes, Route, Link } from 'react-router-dom';
import Chat from './pages/Chat';

export default function App() {
  return (
    <BrowserRouter>
      <header style={{ background: '#e60000', color: '#fff', padding: 12, display: 'flex', justifyContent: 'center', alignItems: 'center' }}>
        <h1>OoredooNova</h1>
        {/* <nav>
          <Link to="/" style={{ color: '#fff', marginRight: 10 }}>Chat</Link>
        </nav> */}
      </header>
      <main style={{ padding: 20 }}>
        <Routes>
          <Route path="/" element={<Chat />} />
        </Routes>
      </main>
    </BrowserRouter>
  );
}
