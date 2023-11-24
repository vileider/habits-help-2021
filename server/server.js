require("dotenv").config();
const express = require("express");
const path = require("path");
const app = express();
const port = process.env.PORT || 3000;
const cors = require("cors");

app.use(cors());

app.use("/habits", require("./routes/habits_get.js"));
app.use("/users", require("./routes/users_get.js"));
app.use("/success", require("./routes/success_get.js"));

app.use((req, res, next) => {
  res.sendFile(path.join(__dirname, "../public", "404.html"));
});

app.listen(port, () => {
  console.log(`server runs on port: ${port}`);
});
