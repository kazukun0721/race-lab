import type { Metadata } from "next";
import RaceLabShell from "@/components/RaceLabShell";
import "./globals.css";

export const metadata: Metadata = {
  title: "RACE LAB | Race Intelligence",
  description: "Private AI prediction and race analysis workspace",
};

const themeScript = `try{if(localStorage.getItem("rh-theme")==="light"){document.documentElement.dataset.theme="light"}}catch(e){}`;

const viewScript = `try{if(localStorage.getItem("rh-view")==="pc"){var m=document.querySelector('meta[name="viewport"]');if(!m){m=document.createElement("meta");m.setAttribute("name","viewport");document.head.appendChild(m)}m.setAttribute("content","width=1100")}}catch(e){}`;

export default function RootLayout({ children }: Readonly<{ children: React.ReactNode }>) {
  return (
    <html lang="ja" suppressHydrationWarning>
      <body>
        <script dangerouslySetInnerHTML={{ __html: themeScript }} />
        <script dangerouslySetInnerHTML={{ __html: viewScript }} />
        <RaceLabShell>{children}</RaceLabShell>
      </body>
    </html>
  );
}
