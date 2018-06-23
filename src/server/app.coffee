'use strict'

require 'ndx-server'
.config
  database: 'db'
  tables: ['users', 'cats']
  localStorage: './data'
  anonymousUser: true
.start()
