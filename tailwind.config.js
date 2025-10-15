/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./_layouts/**/*.html",
    "./_includes/**/*.html",
    "./_posts/**/*.{html,md,markdown}",
    "./_theses/**/*.{html,md,markdown}",
    "./index.md",
    "./about.markdown"
  ],
  theme: {
    extend: {
    },
  },
  plugins: []
}

