"use client";

import { useEffect, useState } from "react";

function applyView(mode: "sp" | "pc") {
  let meta = document.querySelector('meta[name="viewport"]');
  if (!meta) {
    meta = document.createElement("meta");
    meta.setAttribute("name", "viewport");
    document.head.appendChild(meta);
  }
  meta.setAttribute("content", mode === "pc" ? "width=1100" : "width=device-width, initial-scale=1");
}

export default function ViewToggle() {
  const [mode, setMode] = useState<"sp" | "pc">("sp");
  useEffect(() => {
    try {
      if (localStorage.getItem("rh-view") === "pc") setMode("pc");
    } catch {
      /* storage unavailable */
    }
  }, []);
  function toggle() {
    const next = mode === "pc" ? "sp" : "pc";
    try {
      localStorage.setItem("rh-view", next);
    } catch {
      /* storage unavailable */
    }
    setMode(next);
    applyView(next);
  }
  return (
    <button type="button" className="rl-view-toggle" onClick={toggle} aria-pressed={mode === "pc"}>
      {mode === "pc" ? "スマホ表示に切替" : "PC表示に切替"}
    </button>
  );
}
