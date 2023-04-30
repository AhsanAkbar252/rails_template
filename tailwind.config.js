module.exports = {
  mode: 'jit',
  purge: ['./app/**/*.html.erb', './app/**/*.html.slim', './app/**/*.rb'],
  darkMode: false,
  content: [
    './app/helpers/**/*.rb',
    './app/javascript/*.js',
    './app/views/**/*',
  ],
  theme: {
    extend: {},
  },
  variants: {
    extend: {},
  },
  plugins: [
    require('@tailwindcss/aspect-ratio')
  ],
}