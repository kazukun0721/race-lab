import type { Metadata } from "next";
import RaceLabShell from "@/components/RaceLabShell";
import "./globals.css";

export const metadata: Metadata = {
  title: "RACE LAB | Race Intelligence",
  description: "Private AI prediction and race analysis workspace",
};

const themeScript = `try{if(localStorage.getItem("rh-theme")==="light"){document.documentElement.dataset.theme="light"}}catch(e){}`;

export default function RootLayout({ children }: Readonly<{ children: React.ReactNode }>) {
  return (
    <html lang="ja" suppressHydrationWarning>
      <body>
        <script dangerouslySetInnerHTML={{ __html: themeScript }} />
        <RaceLabShell>{children}</RaceLabShell>
      </body>
    </html>
  );
}
