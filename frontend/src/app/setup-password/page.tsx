
"use client";

import { useEffect, useState } from "react";
import { useRouter } from "next/navigation";
import { createClient } from "@/lib/supabase/client";

export default function SetupPasswordPage() {
  const router = useRouter();
  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const [loading, setLoading] = useState(false);
  const [checking, setChecking] = useState(true);
  const [message, setMessage] = useState("");
  const [authorized, setAuthorized] = useState(false);

  useEffect(() => {
    const supabase = createClient();

    async function checkSession() {
      const { data, error } = await supabase.auth.getUser();

      if (!error && data.user) {
        setAuthorized(true);
      }

      setChecking(false);
    }

    void checkSession();

    const { data: listener } =
      supabase.auth.onAuthStateChange((_event, session) => {
        if (session?.user) {
          setAuthorized(true);
          setChecking(false);
        }
      });

    return () => {
      listener.subscription.unsubscribe();
    };
  }, []);

  async function handleSubmit(event: React.FormEvent<HTMLFormElement>) {
    event.preventDefault();
    setMessage("");

    if (password.length < 8) {
      setMessage("パスワードは8文字以上にしてください。");
      return;
    }

    if (password !== confirmPassword) {
      setMessage("パスワードが一致しません。");
      return;
    }

    setLoading(true);

    const supabase = createClient();

    const { error } = await supabase.auth.updateUser({
      password,
    });

    if (error) {
      setMessage(error.message);
    } else {
      router.push("/mypage");
      router.refresh();
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
        <h1>RACE LAB</h1>
        <p style={{ color: "var(--rl-muted)", marginBottom: 24 }}>
          初回パスワード設定
        </p>

        {checking ? (
          <p>認証情報を確認しています...</p>
        ) : !authorized ? (
          <p role="alert">
            認証が確認できませんでした。
            招待メールのリンクからアクセスしてください。
          </p>
        ) : (
          <form onSubmit={handleSubmit}>
            <label htmlFor="password">新しいパスワード</label>
            <input
              id="password"
              type="password"
              autoComplete="new-password"
              minLength={8}
              required
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              style={{
                width: "100%",
                padding: 12,
                margin: "8px 0 18px",
                borderRadius: 8,
              }}
            />

            <label htmlFor="confirm">パスワード確認</label>
            <input
              id="confirm"
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
              {loading ? "設定中..." : "パスワードを設定"}
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
      </div>
    </main>
  );
}
