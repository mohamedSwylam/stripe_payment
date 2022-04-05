const express = require("express");
const env = require("dotenv");
const cookieParser = require("cookie-parser");

const app = express();
app.use(cookieParser());
env.config({ path: "./config.env" });

const PORT = process.env.PORT;

app.use(express.json());
app.use(require("./router/route"));

app.listen(3000,'127.0.0.1', () => {
    console.log('server running');
});