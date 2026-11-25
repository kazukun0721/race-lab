import type { Metadata } from "next";
import RaceLabShell from "@/components/RaceLabShell";
import "./globals.css";

export const metadata: Metadata = {
  title: "RACE LAB | Race Intelligence",
  description: "Private AI prediction and race analysis workspace",
};

export default function RootLayout({ children }: Readonly<{ children: React.ReactNode }>) {
  return <html lang="ja"><body><RaceLabShell>{children}</RaceLabShell></body></html>;
}
