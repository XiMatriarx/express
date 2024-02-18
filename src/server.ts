import express from 'express'
import cors from 'cors'

import config from './config.js'
import middleware from './middleware.js'
import router from './router.js'

const server = express()

server.use(cors())
server.use(express.json())
server.use(middleware)
server.use(router)

server.listen(config.port)
