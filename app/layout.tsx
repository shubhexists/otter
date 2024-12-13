import { ThemeProvider } from "../contexts/ThemeContext";
import "../styles/globals.css";

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="en">
      <body>
        <ThemeProvider>
          <main className="min-h-screen p-8 overflow-auto">{children}</main>
        </ThemeProvider>
      </body>
    </html>
  );
}
