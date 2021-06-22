// @https://vite-ruby.netlify.app/guide/rails
import "vite/dynamic-import-polyfill"

import '@rails/ujs'
import "@hotwired/turbo-rails"
// import ActiveStorage from '@rails/activestorage'

// Import all channels.
// import.meta.globEager('./**/*_channel.js')

// ActiveStorage.start()

// Stimulus Controllers
import '../controllers/index'
