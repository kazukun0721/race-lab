"use client";

import { useEffect, useState } from "react";

export default function ThemeToggle({ className }: { className?: string }) {
  const [theme, setTheme] = useState<"dark" | "light">("dark");

  useEffect(() => {
    const isLight =
      document.documentElement.dataset.theme === "light" ||
      localStorage.getItem("rh-theme") === "light";
    setTheme(isLight ? "light" : "dark");
  }, []);

  function toggle() {
    const next = theme === "light" ? "dark" : "light";
    if (next === "light") {
      document.documentElement.dataset.theme = "light";
    } else {
      delete document.documentElement.dataset.theme;
    }
    localStorage.setItem("rh-theme", next);
    setTheme(next);
  }

  return (
    <button type="button" className={className} onClick={toggle} aria-label="表示テーマを切り替える">
      テーマ：{theme === "light" ? "ホワイト" : "ダーク"}
    </button>
  );
}
