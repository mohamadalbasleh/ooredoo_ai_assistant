// frontend/src/pages/Chat.jsx
import React, { useState } from 'react';
import axios from 'axios';

export default function Chat() {
  const [msg, setMsg] = useState('');
  const [history, setHistory] = useState([]);
  const [loading, setLoading] = useState(false);

  async function send() {
    if (!msg.trim()) return;

    const currentMsg = msg; // ✅ preserve message before clearing
    setMsg(''); // clear input right away for UI responsiveness

    const userMessage = { from: 'You', text: currentMsg };
    setHistory((prev) => [...prev, userMessage]);
    setLoading(true);

    try {
      const payload = { message: currentMsg }; // ✅ use preserved message
      const res = await axios.post('/api/chat', payload);

      const answer =
        res?.data?.answer
          ? String(res.data.answer)
          : JSON.stringify(res.data);

      const assistantMessage = { from: 'Assistant', text: answer };
      setHistory((prev) => [...prev, assistantMessage]);
    } catch (e) {
      console.error('Chat error:', e);
      setHistory((prev) => [
        ...prev,
        { from: 'Assistant', text: '⚠️ Error: server unreachable' },
      ]);
    } finally {
      setLoading(false);
    }
  }

  return (
    <div style={{ maxWidth: 600, margin: 'auto', padding: 20 }}>
      <h2>💬 OoredooNova Chat</h2>

      <div
        style={{
          minHeight: 250,
          border: '1px solid #ccc',
          padding: 10,
          borderRadius: 8,
          background: '#f2f2f2',
          overflowY: 'auto',
          marginBottom: 10,
        }}
      >
        {history.length === 0 && (
          <div style={{ color: '#888', textAlign: 'center', marginTop: 50 }}>
            Start chatting with OoredooNova 👋
          </div>
        )}

        {history.map((m, i) => (
          <div
            key={i}
            style={{
              textAlign: m.from === 'You' ? 'right' : 'left',
              margin: '6px 0',
            }}
          >
            <div
              style={{
                display: 'inline-block',
                padding: '8px 12px',
                borderRadius: 10,
                maxWidth: '80%',
                color: m.from === 'You' ? 'white' : '#000',
                background: m.from === 'You' ? '#0078d4' : '#e6e6e6',
              }}
            >
              <b>{m.from}:</b> {m.text}
            </div>
          </div>
        ))}

        {loading && (
          <div style={{ color: '#666', fontStyle: 'italic' }}>
            Assistant is typing...
          </div>
        )}
      </div>

      <textarea
        value={msg}
        onChange={(e) => setMsg(e.target.value)}
        rows={3}
        style={{
          width: '100%',
          borderRadius: 6,
          padding: 8,
          border: '1px solid #ccc',
        }}
        placeholder="Type your message here..."
      />

      <button
        onClick={send}
        disabled={loading}
        style={{
          marginTop: 8,
          padding: '6px 12px',
          borderRadius: 6,
          cursor: 'pointer',
          background: loading ? '#ccc' : '#0078d4',
          color: 'white',
          border: 'none',
        }}
      >
        {loading ? 'Sending...' : 'Send'}
      </button>
    </div>
  );
}
