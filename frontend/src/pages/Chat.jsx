// frontend/src/pages/Chat.jsx
import React, { useState, useRef, useEffect } from 'react';
import axios from 'axios';
import '../styles/Chat.css';

export default function Chat() {
  const [msg, setMsg] = useState('');
  const [history, setHistory] = useState([]);
  const [loading, setLoading] = useState(false);
  const chatEndRef = useRef(null);

  // Auto-scroll to bottom when new message arrives
  useEffect(() => {
    chatEndRef.current?.scrollIntoView({ behavior: 'smooth' });
  }, [history]);

  async function send() {
    if (!msg.trim()) return;

    const currentMsg = msg;
    setMsg('');

    const userMessage = { from: 'user', text: currentMsg, timestamp: new Date() };
    setHistory((prev) => [...prev, userMessage]);
    setLoading(true);

    try {
      const payload = { message: currentMsg };
      const res = await axios.post('/api/chat', payload);

      const answer = res?.data?.answer ? String(res.data.answer) : JSON.stringify(res.data);
      const assistantMessage = { from: 'assistant', text: answer, timestamp: new Date() };
      setHistory((prev) => [...prev, assistantMessage]);
    } catch (e) {
      console.error('Chat error:', e);
      setHistory((prev) => [
        ...prev,
        { from: 'assistant', text: '⚠️ Connection error. Please check if the server is running.', timestamp: new Date() },
      ]);
    } finally {
      setLoading(false);
    }
  }

  const handleKeyPress = (e) => {
    if (e.key === 'Enter' && !e.shiftKey) {
      e.preventDefault();
      send();
    }
  };

  return (
    <div className="chat-container">
      {/* Header */}
      <div className="chat-header">
        <div className="header-content">
          <div className="logo-section">
            <div className="ooredoo-logo">
              <svg viewBox="0 0 100 100" fill="none">
                <circle cx="30" cy="50" r="18" fill="none" stroke="#E60000" strokeWidth="6"/>
                <circle cx="70" cy="50" r="18" fill="none" stroke="#E60000" strokeWidth="6"/>
              </svg>
            </div>
            <div className="header-text">
              <h1>Ooredoo Business Assistant</h1>
              <p className="header-subtitle">AI-Powered Support • Arabic & English</p>
            </div>
          </div>
          <div className="status-badge">
            <span className="status-dot"></span>
            <span>Online</span>
          </div>
        </div>
      </div>

      {/* Chat Messages Area */}
      <div className="chat-messages">
        {history.length === 0 && (
          <div className="welcome-screen">
            <div className="welcome-icon">👋</div>
            <h2>Welcome to Ooredoo Business Support</h2>
            <p>Ask me anything about our services, products, or technical support.</p>
            <div className="quick-suggestions">
              <button className="suggestion-chip" onClick={() => setMsg('What fiber internet packages do you offer?')}>
                📡 Fiber Packages
              </button>
              <button className="suggestion-chip" onClick={() => setMsg('Tell me about cloud services')}>
                ☁️ Cloud Services
              </button>
              <button className="suggestion-chip" onClick={() => setMsg('ما هي خدمات الأمن السيبراني؟')}>
                � Cybersecurity (AR)
              </button>
            </div>
          </div>
        )}

        {history.map((m, i) => (
          <div key={i} className={`message ${m.from}`}>
            <div className="message-avatar">
              {m.from === 'user' ? (
                <div className="user-avatar">👤</div>
              ) : (
                <div className="assistant-avatar">
                  <svg viewBox="0 0 100 100" fill="none">
                    <circle cx="30" cy="50" r="14" fill="none" stroke="white" strokeWidth="5"/>
                    <circle cx="70" cy="50" r="14" fill="none" stroke="white" strokeWidth="5"/>
                  </svg>
                </div>
              )}
            </div>
            <div className="message-content">
              <div className="message-bubble">
                <div className="message-text">{m.text}</div>
              </div>
              <div className="message-time">
                {m.timestamp?.toLocaleTimeString('en-US', { hour: '2-digit', minute: '2-digit' })}
              </div>
            </div>
          </div>
        ))}

        {loading && (
          <div className="message assistant">
            <div className="message-avatar">
              <div className="assistant-avatar">
                <svg viewBox="0 0 100 100" fill="none">
                  <circle cx="30" cy="50" r="14" fill="none" stroke="white" strokeWidth="5"/>
                  <circle cx="70" cy="50" r="14" fill="none" stroke="white" strokeWidth="5"/>
                </svg>
              </div>
            </div>
            <div className="message-content">
              <div className="message-bubble">
                <div className="typing-indicator">
                  <span></span>
                  <span></span>
                  <span></span>
                </div>
              </div>
            </div>
          </div>
        )}
        
        <div ref={chatEndRef} />
      </div>

      {/* Input Area */}
      <div className="chat-input-container">
        <div className="input-wrapper">
          <textarea
            value={msg}
            onChange={(e) => setMsg(e.target.value)}
            onKeyPress={handleKeyPress}
            rows={1}
            className="chat-input"
            placeholder="Type your message... (Press Enter to send, Shift+Enter for new line)"
            disabled={loading}
          />
          <button
            onClick={send}
            disabled={loading || !msg.trim()}
            className="send-button"
            aria-label="Send message"
          >
            <svg width="24" height="24" viewBox="0 0 24 24" fill="none">
              <path d="M2.01 21L23 12 2.01 3 2 10l15 2-15 2z" fill="currentColor"/>
            </svg>
          </button>
        </div>
        <div className="input-footer">
          <span className="powered-by">Powered by Ollama AI • Llama 3.2</span>
        </div>
      </div>
    </div>
  );
}
