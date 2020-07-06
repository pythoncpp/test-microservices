const db = require('./db')

const connection = db.connect()
    connection.query('select * from notes',  (error, notes) => {
	    console.log(error);
	    console.log(notes);
    })
