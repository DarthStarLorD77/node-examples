const path = require("path");
const express = require("express");
const http = require("http");
const socketIO = require("socket.io");

const app = express();
const server = http.createServer(app);
const io = socketIO(server);

const port = 4000;

app.use(express.static(path.join(__dirname, "public")));

io.on("connection", (socket) => {
  console.log("A player has connected");

  socket.on("move", (move) => {
    io.emit("new_move", move);
  });

  socket.on("disconnect", () => {
    console.log("A client has disconnected");
  });
});

server.listen(port, () => {
  console.log(`Server is up on port ${port}`);
});
