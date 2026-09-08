/** @type {import('tailwindcss').Config} */
export default {
  content: ['./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}'],
  theme: {
    extend: {
      colors: {
        navy: {
          900: '#0b111e',
          800: '#142140',
          700: '#1c2e59'
        }
      },
      fontFamily: {
        oswald: ['Oswald', 'sans-serif'],
        sans: ['Pretendard', 'Roboto', 'sans-serif']
      }
    }
  },
  plugins: []
};