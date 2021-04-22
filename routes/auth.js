const express = require('express')
const router = express.Router()
const Controller = require('../controllers/auth')

router.post('/_admin', Controller.insertData)
router.post('/loi', Controller.insertLoi)
router.post('/_uploadShp', Controller.insertSHP)
router.post('/_project', Controller.insertProject)

router.post('/_styleShp', Controller.insertStyleSHP)
router.post('/_katPPI', Controller.insertKatPPI)
router.post('/_detailIndikator', Controller.insertDetailPPI)
router.post('/_updatecapaian/:id_detail_kat_ppi/:ppi/:id_katppi/:rincian/:satuan', Controller.updateindikatorppi)

router.get('/delete/:id', Controller.deleteKat)
router.get('/deleteLoi/:id_loi', Controller.deleteLoi)
router.get('/deleteShp/:id_shp', Controller.deleteShp)
router.get('/detleteStyle/:id_shp', Controller.detleteStyle)
router.get('/deleteProject/:id_project', Controller.deleteProject)

router.get('/editKat/:id', Controller.editKat)
router.post('/editKat/:id', Controller.updateKat)
router.get('/editLoi/:id_loi', Controller.editLoi)
router.post('/editLoi/:id_loi', Controller.updateLoi)
router.get('/editShp/:id_shp', Controller.editShp)
router.post('/editShp/:id_shp', Controller.updateShp)
router.get('/editProject/:id_project', Controller.editProject)
router.post('/editProject/:id_project', Controller.updateProject)


router.get('/styleShp/:id_shp', Controller.styleShp)
// detail shp
router.get('/detailShp/:id_shp', Controller.detailShp)

router.get('/detailStyle/:id_shp', Controller.detailStyle)
router.get('/editStyle/:id_shp', Controller.editStyle)

router.post('/editstyle/:id_shp', Controller.updateStyleShp)
//post id project
// router.get('/detailProject/:id_project', Controller.detailProject)

module.exports = router





