const express = require('express')
const router = express.Router()
const db = require('../db')
const utils = require('../utils')

router.get('/', (request, response) => {
    const connection = db.connect()
    connection.query('select * from notes',  (error, notes) => {
        response.send(utils.createResult(error, notes))
    })
})

router.post('/', (request, response) => {
    const {contents} = request.body

    const query = `insert into notes (contents) values ('${contents}')`
    const connection = db.connect()
    connection.query(query,  (error, notes) => {
        response.send(utils.createResult(error, notes))
    })
})

module.exports = router;
