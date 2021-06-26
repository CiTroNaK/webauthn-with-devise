// Fontawesome
import { config, library, dom } from '@fortawesome/fontawesome-svg-core'

// Change the config to fix the flicker
config.mutateApproach = 'sync'

// Import icons
import {faKey, faKeyboard, faPlus, faTrash} from '@fortawesome/free-solid-svg-icons'
library.add(faKey, faKeyboard, faPlus, faTrash)

// Load icons
dom.watch()
