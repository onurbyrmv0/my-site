/** @type {import('tailwindcss').Config} */
export default {
  content: ["./index.html", "./src/**/*.{vue,js,ts,jsx,tsx}"],
  darkMode: "class", // Enable dark mode
  theme: {
    extend: {
      colors: {
        dark: {
          bg: "#121212",
          surface: "#1E1E1E",
          primary: "#BB86FC",
          secondary: "#03DAC6",
          error: "#CF6679",
        },
      },
    },
  },
  plugins: [],
};
