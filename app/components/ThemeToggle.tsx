"use client";

import { useTheme } from "../../contexts/ThemeContext";

export default function ThemeToggle() {
  const { theme, toggleTheme } = useTheme();

  return (
    <button onClick={toggleTheme} className="neutro-button text-2xl">
      {theme === "light" ? "DARK" : "LIGHT"}
    </button>
  );
}
