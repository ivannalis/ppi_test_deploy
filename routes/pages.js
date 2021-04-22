const express = require('express')
const db = require('../config/dbconfig.js')

const router = express.Router()

router.get('/', (req, res) => {
    res.render('index')
})

router.get('/contact', (req, res) => {
    res.render('contact')
})

router.get('/list', (req, res) => {
    res.render('list')
})

router.get('/detail-indikator', (req, res) => {
    res.render('detail-indikator')
})

router.get('/loi', (req, res) => {
    res.render('loi')
})

router.get('/dashboard', (req, res) => {
    res.render('dashboard')
})

router.get('/thankspage', (req, res) => {
    res.render('thankspage')
})

router.get('/_editKat', (req, res) => {
    res.render('_editKat', {
        kategori: {}
    })
})

router.get('/_editLoi', (req, res) => {
    res.render('_editLoi', {
        detailLoi: {}
    })
})

router.get('/_editShp', (req, res) => {
    res.render('_editShp', {
        shp: {}
    })
})

router.get('/_project', (req, res) => {
    res.render('_project')
})

router.get('/_editProject', (req, res) => {
    res.render('_editProject', {
        project: {}
    })
})
// router.get('/projectDetail/:id_project', (req, res) => {
//     let id = req.params.id_project
//     db.query('SELECT * FROM project WHERE id_project = ?', id, (err, results) => {
//         if (err) {
//             console.log(err)
//         } else {
//             res.render('projectDetail', {
//                 projectdetail: results[0]
//             })
//         }
//     })
// })

router.get('/dashboardSummary', (req, res) => {
    res.render('dashboardSummary')
})

router.get('/about-us', (req, res) => {
    res.render('about-us')
})



module.exports = router