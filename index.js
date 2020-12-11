const express = require("express");
const path = require("path");
const PORT = process.env.PORT || 5000;
const THEME = process.env.THEME || "light";

if (THEME == "dark") {
  var DIR = "dark";
} else {
  var DIR = "light";
}

express()
  .use(express.static(path.join(__dirname, DIR)))
  .set("views", path.join(__dirname, "views"))
  .set("view engine", "ejs")
  .get("/", (req, res) => res.send("Hello World!"))
  .listen(PORT, () => console.log(`Listening on ${PORT}`));
