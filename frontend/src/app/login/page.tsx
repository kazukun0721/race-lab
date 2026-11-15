
"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";
import { createClient } from "@/lib/supabase/client";

export default function LoginPage() {
  const router = useRouter();
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [loading, setLoading] = useState(false);
  const [message, setMessage] = useState("");

  async function handleLogin() {
    setLoading(true);
    setMessage("");

    const supabase = createClient();

    const { error } = await supabase.auth.signInWithPassword({
      email,
      password,
    });

    if (error) {
      setMessage(error.message);
    } else {
      router.push("/");
      router.refresh();
    }

    setLoading(false);
  }

  return (
    <main style={{
      minHeight: "100vh",
      background: "#0b1220",
      color: "#f8fafc",
      display: "flex",
      alignItems: "center",
      justifyContent: "center",
      padding: 24,
    }}>
      <div style={{
        width: "100%",
        maxWidth: 400,
        background: "#172338",
        padding: 32,
        borderRadius: 16,
      }}>
        <h1 style={{ marginBottom: 8 }}>RACE LAB</h1>
        <p style={{
          color: "#94a3b8",
          marginBottom: 24,
        }}>
          アカウントにログイン
        </p>

        <form onSubmit={(event) => {
          event.preventDefault();
          void handleLogin();
        }}>
          <label htmlFor="email">メールアドレス</label>
          <input
            id="email"
            type="email"
            autoComplete="email"
            required
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            style={{
              width: "100%",
              padding: 12,
              margin: "8px 0 18px",
              borderRadius: 8,
              border: "1px solid #475569",
              background: "#0b1220",
              color: "white",
            }}
          />

          <label htmlFor="password">パスワード</label>
          <input
            id="password"
            type="password"
            autoComplete="current-password"
            required
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            style={{
              width: "100%",
              padding: 12,
              margin: "8px 0 24px",
              borderRadius: 8,
              border: "1px solid #475569",
              background: "#0b1220",
              color: "white",
            }}
          />

          <button
            type="submit"
            disabled={loading}
            style={{
              width: "100%",
              padding: 14,
              border: 0,
              borderRadius: 8,
              background: "#34d399",
              color: "#052e24",
              fontWeight: "bold",
              cursor: "pointer",
            }}
          >
            {loading ? "ログイン中..." : "ログイン"}
          </button>
        </form>

        {message && (
          <p role="alert" style={{
            color: "#f87171",
            marginTop: 16,
          }}>
            {message}
          </p>
        )}
      </div>
    </main>
  );
}
