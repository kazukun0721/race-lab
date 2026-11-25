"use client";

import { useState } from "react";
import Link from "next/link";
import { createClient } from "@/lib/supabase/client";

export default function SignupPage() {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const [loading, setLoading] = useState(false);
  const [message, setMessage] = useState("");
  const [done, setDone] = useState("");

  async function handleSignup() {
    setLoading(true);
    setMessage("");
    setDone("");

    if (password !== confirmPassword) {
      setMessage("パスワードが一致しません。");
      setLoading(false);
      return;
    }

    const supabase = createClient();

    const { data, error } = await supabase.auth.signUp({
      email,
      password,
    });

    if (error) {
      setMessage(error.message);
    } else if (data.session) {
      setDone(
        "登録が完了しました。管理者の承認が完了すると、レースデータが見られるようになります。承認後にログインしてください。"
      );
    } else {
      setDone(
        "確認メールを送信しました。メール内のリンクを開いて登録を完了してください。その後、管理者の承認が完了するとレースデータが見られるようになります。"
      );
    }

    setLoading(false);
  }

  return (
    <main style={{
      minHeight: "100vh",
      background: "var(--rl-bg)",
      color: "var(--rl-text)",
      display: "flex",
      alignItems: "center",
      justifyContent: "center",
      padding: 24,
    }}>
      <div style={{
        width: "100%",
        maxWidth: 400,
        background: "var(--rl-hover)",
        padding: 32,
        borderRadius: 16,
      }}>
        <h1 style={{ marginBottom: 8 }}>RACE LAB</h1>
        <p style={{
          color: "var(--rl-muted)",
          marginBottom: 24,
        }}>
          新規アカウント登録
        </p>

        {done ? (
          <p style={{ color: "var(--rl-accent-bright)", lineHeight: 1.7 }}>{done}</p>
        ) : (
          <form onSubmit={(event) => {
            event.preventDefault();
            void handleSignup();
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
                border: "1px solid var(--rl-faint)",
                background: "var(--rl-bg)",
                color: "white",
              }}
            />

            <label htmlFor="password">パスワード</label>
            <input
              id="password"
              type="password"
              autoComplete="new-password"
              required
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              style={{
                width: "100%",
                padding: 12,
                margin: "8px 0 18px",
                borderRadius: 8,
                border: "1px solid var(--rl-faint)",
                background: "var(--rl-bg)",
                color: "white",
              }}
            />

            <label htmlFor="confirmPassword">パスワード（確認）</label>
            <input
              id="confirmPassword"
              type="password"
              autoComplete="new-password"
              required
              value={confirmPassword}
              onChange={(e) => setConfirmPassword(e.target.value)}
              style={{
                width: "100%",
                padding: 12,
                margin: "8px 0 24px",
                borderRadius: 8,
                border: "1px solid var(--rl-faint)",
                background: "var(--rl-bg)",
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
                background: "var(--rl-accent-bright)",
                color: "var(--rl-accent-bg)",
                fontWeight: "bold",
                cursor: "pointer",
              }}
            >
              {loading ? "登録中..." : "登録する"}
            </button>
          </form>
        )}

        {message && (
          <p role="alert" style={{
            color: "var(--rl-danger-text)",
            marginTop: 16,
          }}>
            {message}
          </p>
        )}

        <p style={{ marginTop: 24, color: "var(--rl-muted)", fontSize: 14 }}>
          すでにアカウントがある場合は{" "}
          <Link href="/login" style={{ color: "var(--rl-accent-bright)" }}>
            ログイン
          </Link>
        </p>
      </div>
    </main>
  );
}
