// @https://vite-ruby.netlify.app/guide/rails

import '@rails/ujs'

import Turbolinks from 'turbolinks'
// import ActiveStorage from '@rails/activestorage'

// Import all channels.
import.meta.globEager('./**/*_channel.js')

Turbolinks.start()
// ActiveStorage.start()

// Example: Import a stylesheet in app/frontend/index.css
// import '~/index.css'
