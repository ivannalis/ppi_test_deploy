const db = require('../config/dbconfig.js')
var decode = require('decode-html');
const express = require('express')
const router = express.Router()

router.get('/_admin', (req, res) => {
    db.query('SELECT * FROM kat_shp', (err, results) => {
        if (err) {
            console.log(err)
        } else {
            res.render('_admin', {
                kategori: results
            })
        }
    })
})

router.get('/applyers', (req, res) => {
    db.query('SELECT * FROM loi WHERE status=1', (err, results) => {
        if (err) {
            console.log(err)
        } else {
            res.render('applyers', {
                applyer: results
            })
            console.log(results)
        }
    })
})

router.get('/_listLoi', (req, res) => {
    db.query('SELECT * FROM loi', (err, results) => {
        if (err) {
            console.log(err)
        } else {
            res.render('_listLoi', {
                applyer: results
            })
            console.log(results)
        }
    })
})

router.get('/_uploadShp', (req, res) => {
    let q1 = 'SELECT * FROM kat_shp'
    let q2 = 'SELECT * FROM shp'

    db.query(q1, function (err, r1) {
        if (err) throw err;
        db.query(q2, function (err, r2) {
            if (err) throw err;
            res.render('_uploadShp', {
                kat_shp: r1,
                shp: r2,
                geojson1: '../assets/geojson/admin_kkr.geojson'
            });
        });
    });
})

router.get('/map', (req, res) => {
    let baseLayer = '../assets/geojson/baselayer/admin_line.geojson'
    db.query('SELECT shp.nama_shp, shp.id_kat_shp, shp.status_shp, shp.path_shp, kat_shp.id, kat_shp.kategori, styleshp.color_prop,styleshp.prop_shp, styleshp.id_shp,styleshp.style_by FROM shp LEFT JOIN kat_shp ON shp.id_kat_shp = kat_shp.id LEFT JOIN styleshp ON shp.id_shp = styleshp.id_shp WHERE shp.status_shp = 1',
        (err, results) => {
            if (err) {
                console.log(err)
            } else {
                let groupBy = (element, key) => {
                    return element.reduce((value, x) => {
                        (value[x[key]] = value[x[key]] || []).push(x);
                        return value;
                    }, {});
                };
                let items = groupBy(results, 'nama_shp')

                function toColumns(rows) {
                    const columns = {};
                    const keys = Object.keys(rows[0]);
                    for (const key of keys) columns[key] = [];
                    for (const row of rows) {
                        for (const key of keys) {
                            columns[key].push(row[key]);
                        }
                    }
                    return columns;
                }
                for (const kategori in items) {
                    const columns = toColumns(items[kategori]);
                    columns.nama_shp = columns.nama_shp[0];
                    columns.id_kat_shp = columns.id_kat_shp[0];
                    columns.path_shp = columns.path_shp[0];
                    columns.status_shp = columns.status_shp[0]
                    columns.kategori = columns.kategori[0]
                    columns.id = columns.id[0]
                    columns.id_shp = columns.id_shp[0]
                    columns.style_by = columns.style_by[0]
                    columns.path_shp = columns.path_shp.replace('public/', '')
                    // columns.kategori = columns.kategori[0]
                    items[kategori] = columns;
                }
                res.render('map', {
                    legend: items,
                    baseLayer:baseLayer
                })
                console.log(Object.values(items))
            }
        })
})

router.get('/_listShp', (req, res) => {
    db.query('SELECT shp.id_shp, shp.nama_shp, shp.sumber_shp, shp.deskripsi_shp, shp.tanggal, shp.id_kat_shp, shp.status_shp, shp.type_shp, kat_shp.id, kat_shp.kategori FROM shp LEFT JOIN kat_shp ON shp.id_kat_shp = kat_shp.id', (err, results) => {
        if (err) {
            console.log(err)
        } else {
            res.render('_listShp', {
                shp: results
            })
            console.log(results)
        }
    })
})

router.get('/_listShp', (req, res) => {
    db.query('SELECT shp.id_shp, shp.nama_shp, shp.sumber_shp, shp.deskripsi_shp, shp.tanggal, shp.id_kat_shp, shp.status_shp, shp.type_shp, kat_shp.id, kat_shp.kategori FROM shp LEFT JOIN kat_shp ON shp.id_kat_shp = kat_shp.id', (err, results) => {
        if (err) {
            console.log(err)
        } else {
            res.render('_listShp', {
                shp: results
            })
            console.log(results)
        }
    })
})

router.get('/project', (req, res) => {
    db.query('SELECT * FROM project', (err, results) => {
        if (err) {
            console.log(err)
        } else {
            res.render('project', {
                project: results
            })

        }
    })
})

router.get('/_listProject', (req, res) => {
    db.query('SELECT * FROM project', (err, results) => {
        if (err) {
            console.log(err)
        } else {
            res.render('_listProject', {
                listproject: results
            })
        }
    })
})

router.get('/projectDetail/:id_project', (req, res) => {
    let id = req.params.id_project
    db.query('SELECT * FROM project WHERE id_project = ?', id, (err, results) => {
        if (err) {
            console.log(err)
        } else {
            res.render('projectDetail', {
                projectdetail: results[0]
            })
        }
    })
})

router.get('/filterProject/:status_project', (req, res) => {
    let id = req.params.status_project
    db.query('SELECT * FROM project WHERE status_project = ?', id, (err, results) => {
        if (err) {
            console.log(err)
        } else {
            res.render('filterProject', {
                project: results,
                status: id
            })
        }
    })
})

router.get('/_katPPI', (req, res) => {
    db.query('SELECT * FROM kat_ppi', (err, results) => {
        if (err) {
            console.log(err)
        } else {
            res.render('_katPPI', {
                katPPI: results
            })
        }
    })
})

router.get('/_detailIndikator/:id_katppi/:kat_ppi/:indikator', (req, res) => {
    let id = req.params.id_katppi
    let kat_ppi = req.params.kat_ppi
    let indikator = req.params.indikator
    db.query('SELECT * FROM detail_kat_ppi WHERE id_katppi = ?', [id], (err, results) => {
        if (err) {
            console.log(err)
        } else {
            res.render('_detailIndikator', {
                detailindikator: results,
                id: id,
                indikator: indikator,
                ppi: kat_ppi
            })
            console.log(indikator)
        }
    })
})


router.get('/indikatorTable/:id_katppi/:indikator', (req, res) => {
    let id = req.params.id_katppi
    let ind = req.params.indikator
    db.query('SELECT * FROM kat_ppi', (err, katppi) => {
        if (err) {
            console.log(err)
        } else {
            db.query('SELECT * FROM detail_kat_ppi WHERE id_katppi = ?', [id], (err, indikator) => {
                if (err) {
                    console.log(err)
                } else {
                    res.render('indikatorTable', {
                        katppi: katppi,
                        indikator: indikator,
                        kat: ind
                    })
                }
            })

        }
    })
})

router.get('/_detailKomponenPPI', (req, res) => {
    db.query('SELECT * FROM detail_kat_ppi', (err, results) => {
        if (err) {
            console.log(err)
        } else {
            res.render('_detailKomponenPPI', {
                detailkomponenppi: results
            })
        }
    })
})

router.get('/_updatecapaian/:id_detail_kat_ppi/:ppi/:id_katppi/:rincian/:satuan', (req, res) => {
    let id = req.params.id_detail_kat_ppi
    let id_katppi = req.params.id_katppi
    let rincian = req.params.rincian
    let satuan = req.params.satuan
    let ppi = req.params.ppi
    db.query('SELECT * FROM update_indikator_ppi', (err, results) => {
        if (err) {
            console.log(err)
        } else {
            res.render('_updatecapaian', {
                update: results,
                rincian: rincian,
                id_detail_kat_ppi: id,
                id_kat_ppi: id_katppi,
                satuan: satuan,
                ppi: ppi
            })
        }
    })
})

router.get('/katppi/:ppi', (req, res) => {
    let ppi = req.params.ppi
    db.query('SELECT detail_kat_ppi.id_detail_kat_ppi,detail_kat_ppi.kat_ppi,detail_kat_ppi.ppi,detail_kat_ppi.rincian, detail_kat_ppi.data_dasar,detail_kat_ppi.indikator_capaian_2025,detail_kat_ppi.satuan, update_indikator_ppi.id_detail_kat_ppi as up,update_indikator_ppi.update_capaian, IFNULL(update_indikator_ppi.last_update, "...") AS last_update, IFNULL(SUM(update_indikator_ppi.update_capaian),0) AS progress FROM detail_kat_ppi LEFT JOIN update_indikator_ppi ON detail_kat_ppi.id_detail_kat_ppi = update_indikator_ppi.id_detail_kat_ppi WHERE detail_kat_ppi.ppi = ? GROUP BY detail_kat_ppi.id_detail_kat_ppi', [ppi], (err, results) => {
        if (err) {
            console.log(err)
        } else {
            db.query('SELECT detail_kat_ppi.id_detail_kat_ppi,detail_kat_ppi.kat_ppi,detail_kat_ppi.ppi,detail_kat_ppi.rincian,detail_kat_ppi.satuan,detail_kat_ppi.indikator_capaian_2025, detail_kat_ppi.data_dasar, update_indikator_ppi.id_detail_kat_ppi as match_id,update_indikator_ppi.update_capaian, IFNULL(update_indikator_ppi.last_update, "Belum ada data") AS last_update FROM detail_kat_ppi LEFT JOIN update_indikator_ppi ON detail_kat_ppi.id_detail_kat_ppi = update_indikator_ppi.id_detail_kat_ppi WHERE detail_kat_ppi.ppi = ?', [ppi], (err, grafikval) => {
                if (err) {
                    console.log(err)
                } else {
                    let groupBy = (element, key) => {
                        return element.reduce((value, x) => {
                            (value[x[key]] = value[x[key]] || []).push(x);
                            return value;
                        }, {});
                    };
                    let items = groupBy(grafikval, 'rincian')

                    function toColumns(rows) {
                        const columns = {};
                        const keys = Object.keys(rows[0]);
                        for (const key of keys) columns[key] = [];
                        for (const row of rows) {
                            for (const key of keys) {
                                columns[key].push(row[key]);
                            }
                        }
                        return columns;
                    }
                    for (const kategori in items) {
                        const columns = toColumns(items[kategori]);
                        columns.kat_ppi = columns.kat_ppi[0];
                        columns.ppi = columns.ppi[0];
                        columns.rincian = columns.rincian[0];
                        columns.id_detail_kat_ppi = columns.id_detail_kat_ppi[0]
                        columns.satuan = columns.satuan[0]
                        columns.data_dasar = columns.data_dasar.map(a => {return parseInt(a / 12)})
                        // columns.kategori = columns.kategori[0]
                        items[kategori] = columns;
                    }

                    res.render('katppi', { detailppi: results, ppi: ppi, datagrafik:items })
                    console.log(Object.values(items))
                }
            })
        }
    })
})


// router.get('/partials/footer', (req, res) => {
//     res.write('partials/footer',{footer:'ini footer'})
// })

module.exports = router