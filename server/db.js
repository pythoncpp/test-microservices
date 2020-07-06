const mysql = require('mysql2')

const host = '172.16.20.11'
const user = 'root'
const password = 'root'
const db = 'notesdb'

function connect() {
    const connection = mysql.createConnection({
        host: host,
        user: user,
        password: password,
        database: db
    })

    connection.connect()
    return connection
}

module.exports = {
    connect: connect
}