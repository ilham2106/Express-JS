const usermodel = require('../models/usermodel')
const bcrypt = require('bcryptjs')
// const {required} = require('@hapi/joi')
const {validation} = require('../middleware/validation')
const jwt = require('jsonwebtoken')
const dotenv = require('dotenv')
dotenv.config()



const login = async (req,res) =>{
    try{
        const username = req.body.username
        const password = req.body.password
        const getdata = await usermodel.findOne({
            where :{username: username}
        })

        if(!getdata) res.status(400).send("Username tidak terdaftar")
        const resultLogin = bcrypt.compareSync(password, getdata.password)

        if(!resultLogin) res.status(400).send("Username atau password tidak sama")

        //token
        const token = jwt.sign({_username: getdata.username}, process.env.TOKEN_RAHASIA)
        res.header('auth-token', token).send('berhasil login')
        // res.json(getdata);



    }catch (err) {
        console.error(err.message);
        res.status(500).send("server eror")
    }
}

const register = async (req,res) =>{
    try{
        const username = req.body.username
        const password = req.body.password
        const email = req.body.email

        //Validasi form
        const {error} = validation(req.body)
        if(error) return res.status(400).send(error.details[0].message) 
        
        //jika sesuai  kriteria simpan data
        const salt = bcrypt.genSaltSync(10)
        const hashedPassword = await bcrypt.hash(password, salt)

        const user = new usermodel({
            username : username,
            password : hashedPassword,
            email : email,
        })

        const saveUser = await user.save();
        res.json(saveUser);
    }catch (err) {
        console.error(err.message);
        res.status(500).send("server eror")
    }
}

module.exports ={
    register, login
}