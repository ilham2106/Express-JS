const express = require('express');

const methodGet = (req, res) =>{
    res.send("Contoh menggunakan Method GET")
}

const methodPost = (req, res) =>{
    res.send("Contoh menggunakan Method POST")
}
const methodPut = (req, res) =>{
    res.send("Contoh menggunakan Method PUT")
}
const methodDelete = (req, res) =>{
    res.send("Contoh menggunakan Method DELETE")
}

module.exports = {
    methodGet, methodPost, methodPut, methodDelete
}