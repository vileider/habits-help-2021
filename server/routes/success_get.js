const express = require("express");
const ibmdb = require("ibm_db");
const connStr = require("../connection_string");

const router = express.Router();

router.get("/", (req, res) => {
  ibmdb.open(connStr.connStr, function (err, conn) {
    if (err) return console.log(err);
    console.log("ibmdb success");
    conn.query("SELECT * FROM Success", (err, data) => {
      if (err) console.log(err);
      console.log(data);
      res.json(data);
      conn.close(function () {
        console.log("Done OK");
      });
    });
  });
});

module.exports = router;
