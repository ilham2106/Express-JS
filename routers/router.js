const express = require('express');
const router = express.Router();
const sampleController = require('../controllers/sampleController')
const foodController = require('../controllers/foodscontroller')
const authController = require('../controllers/authController')
const verifitoken = require('../middleware/verifytoken')


router.get('/', sampleController.methodGet)

router.post('/', sampleController.methodPost)

router.put('/', sampleController.methodPut)

router.delete('/', sampleController.methodDelete)

//foods
router.post('/foods', foodController.methodPost)
router.get('/foods', verifitoken,foodController.methodGet)
router.get('/foods/:id', foodController.methodGetId)
router.put('/foods/:id', foodController.methodPut)
router.delete('/foods/:id', foodController.methodDelete)

router.post('/foods/upload', foodController.methodUpload)
router.post('/foods/search', foodController.methodCondition)

router.post('/auth/registrasi', authController.register)
router.post('/auth/login', authController.login)

module.exports = router