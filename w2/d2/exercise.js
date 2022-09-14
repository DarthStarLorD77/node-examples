const express = require("express");
const cookieParser = require('cookie-parser')

const app = express();

app.set("view engine", "ejs");
app.use(express.urlencoded({ extendend: true}));
app.use(cookieParser());

const users = {
    test: {
        name: "test",
        username:"test",
        password:"test",
    },
};

app.get('/register', (req, res) => {
    res.render('register');
})

app.post('/register', (req, res) => {
    console.log('body', req.body);
    const {name, username, password} = req.body;
    console.log('username', username);
    users[username] = {name, username, password};

    console.log('users', users);
    res.cookie('username', username);
    res.send('user created');
});

app.get("/login", (req, res) => {
    res.render("login");
});

app.post("/login", (req, res) => {
    const receivedUsername = req.body.username;
    const receivedPassword = req.body.password;
    const user = users[receivedUsername];
    if(!user) return res.send('invalid username');
    if(user.password === receivedPassword){
        res.cookie('username', user.username);
        res.send('You are logged in');
    }
    res.send('Invalid password');
});

app.get("/profile", (req, res) => {
    const username = req.cookie.username;
    if(!username) return res.redirect('/login');
    const user = users(username);
    res.render("profile", {username:user.username, password : user.password });
});

app.post('/logout', (req, res) => {
    res.clearCookie('username');
    res.redirect('/login');
});

app.listen(3010, () => console.log("server running on port 3010"));
