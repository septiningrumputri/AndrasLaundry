const router = require('express').Router()
const express = require('express')
const userController = require('../controllers/userController')

router.use(express.json());

router.post('/register', (req,res) => {
    userController.register(req.body)
        .then(result => res.json(result))
        .catch(err => res.json(err))
})

router.post('/login', (req,res) => {
    userController.login(req.body)
        .then(result => res.json(result))
        .catch(err => res.json(err))
})

router.put('/edit/:id', (req, res) => {
    const data = req.body;
    console.log(data)
    userController.edit(req.params.id, data)
      .then(result => res.json(result))
      .catch(err => res.json(err))
})

router.get('/getbyid/:id', (req, res) => {
    console.log(req.params.id)
    userController.getById(req.params.id)
      .then(result => res.json(result))
      .catch(err => res.json(err))
  })

module.exports = router