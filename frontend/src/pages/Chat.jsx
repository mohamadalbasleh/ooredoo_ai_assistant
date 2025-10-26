// frontend/src/pages/Chat.jsx
import React, { useState, useRef, useEffect } from 'react';
import axios from 'axios';
import '../styles/Chat.css';

export default function Chat() {
  const [msg, setMsg] = useState('');
  const [history, setHistory] = useState([]);
  const [loading, setLoading] = useState(false);
  const [showFAQ, setShowFAQ] = useState(false);
  const [showSplash, setShowSplash] = useState(true);
  const [splashPhase, setSplashPhase] = useState('enter'); // 'enter', 'wave', 'exit'
  const chatEndRef = useRef(null);

  // Common FAQ questions
  const faqQuestions = [
    { id: 1, question: "Complete internet outage - no connection", icon: "🔴" },
    { id: 2, question: "Very slow internet speed affecting business", icon: "🐌" },
    { id: 3, question: "VPN connection keeps failing", icon: "🔐" },
    { id: 4, question: "Weak WiFi signal in some office areas", icon: "📶" },
    { id: 5, question: "Intermittent connection drops throughout the day", icon: "⚠️" },
    { id: 6, question: "Cannot access cloud server via SSH", icon: "☁️" },
    { id: 7, question: "Cloud storage running out unexpectedly", icon: "💾" },
    { id: 8, question: "Database connection timeout errors", icon: "🗄️" },
    { id: 9, question: "Backup jobs failing with errors", icon: "📦" },
    { id: 10, question: "SSL certificate expiration warnings", icon: "🔒" }
  ];

  // Splash screen animation sequence
  useEffect(() => {
    const timer1 = setTimeout(() => setSplashPhase('wave'), 500);
    const timer2 = setTimeout(() => setSplashPhase('exit'), 2500);
    const timer3 = setTimeout(() => setShowSplash(false), 3500);
    
    return () => {
      clearTimeout(timer1);
      clearTimeout(timer2);
      clearTimeout(timer3);
    };
  }, []);

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
      {/* Splash Screen */}
      {showSplash && (
        <div className={`splash-screen ${splashPhase}`}>
          <div className="splash-robot">
            <img 
              src="/ooredoo-robot.png" 
              alt="Ooredoo Robot" 
              onError={(e) => {
                // Fallback to SVG if image not found
                e.target.style.display = 'none';
                e.target.nextSibling.style.display = 'flex';
              }}
            />
            <div className="robot-fallback" style={{display: 'none'}}>
              <div className="robot-body">
                <div className="robot-head">
                  <div className="robot-antenna"></div>
                  <div className="robot-face">
                    <div className="robot-eyes">
                      <div className="robot-eye"></div>
                      <div className="robot-eye"></div>
                    </div>
                    <div className="robot-smile"></div>
                  </div>
                </div>
                <div className="robot-torso">
                  <div className="ooredoo-badge">ooredoo</div>
                </div>
                <div className="robot-arm robot-arm-left">👋</div>
                <div className="robot-arm robot-arm-right"></div>
              </div>
            </div>
          </div>
          <h1 className="splash-text">Welcome to Ooredoo</h1>
          <p className="splash-subtext">Business Assistant</p>
        </div>
      )}

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
        {history.length === 0 && !showFAQ && (
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
                🔒 Cybersecurity (AR)
              </button>
              <button className="suggestion-chip" onClick={() => setShowFAQ(true)}>
                ❓ FAQ
              </button>
            </div>
          </div>
        )}

        {history.length === 0 && showFAQ && (
          <div className="welcome-screen">
            <div className="welcome-icon">❓</div>
            <h2>Frequently Asked Questions</h2>
            <p>Choose a question to get detailed troubleshooting steps:</p>
            <div className="faq-list">
              {faqQuestions.map((faq) => (
                <button 
                  key={faq.id} 
                  className="faq-item" 
                  onClick={async () => {
                    const question = `How to solve: ${faq.question}`;
                    setShowFAQ(false);
                    setMsg('');
                    
                    const userMessage = { from: 'user', text: question, timestamp: new Date() };
                    setHistory([userMessage]);
                    setLoading(true);

                    try {
                      const res = await axios.post('/api/chat', { message: question });
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
                  }}
                >
                  <span className="faq-icon">{faq.icon}</span>
                  <span className="faq-text">{faq.question}</span>
                </button>
              ))}
            </div>
            <button className="back-button" onClick={() => setShowFAQ(false)}>
              ← Back to Main Menu
            </button>
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
          <span className="powered-by">Powered by Ollama AI • Llama 3.1 (8B)</span>
        </div>
      </div>
    </div>
  );
}
