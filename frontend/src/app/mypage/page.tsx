
"use client";

import { useEffect, useState } from "react";
import { useRouter } from "next/navigation";
import { createClient } from "@/lib/supabase/client";

export default function MyPage() {
  const router = useRouter();

  const [email, setEmail] = useState("");
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const supabase = createClient();

    async function checkUser() {
      const { data, error } = await supabase.auth.getUser();

      if (error || !data.user) {
        router.replace("/login");
        return;
      }

      setEmail(data.user.email ?? "");
      setLoading(false);
    }

    void checkUser();
  }, [router]);

  async function handleLogout() {
    const supabase = createClient();

    const { error } = await supabase.auth.signOut();

    if (error) {
      alert("ログアウトに失敗しました。");
      return;
    }

    router.replace("/login");
    router.refresh();
  }

  if (loading) {
    return (
      <main style={{ padding: 40 }}>
        ログイン状態を確認中...
      </main>
    );
  }

  return (
    <main style={{
      minHeight: "100vh",
      background: "#0b1220",
      color: "#f8fafc",
      padding: 24,
    }}>
      <div style={{ maxWidth: 800, margin: "auto" }}>
        <h1>RACE LAB マイページ</h1>

        <section style={{
          background: "#172338",
          padding: 24,
          borderRadius: 16,
          marginTop: 24,
        }}>
          <h2>アカウント情報</h2>

          <p style={{ marginTop: 16 }}>
            メールアドレス：{email}
          </p>

          <p style={{
            color: "#34d399",
            marginTop: 12,
          }}>
            ● ログイン中
          </p>

          <button
            onClick={handleLogout}
            style={{
              marginTop: 24,
              padding: "12px 20px",
              background: "#ef4444",
              color: "white",
              border: 0,
              borderRadius: 8,
              cursor: "pointer",
            }}
          >
            ログアウト
          </button>
        </section>
      </div>
    </main>
  );
}
