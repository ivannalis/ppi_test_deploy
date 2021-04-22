const db = require('../config/dbconfig.js')
const multer = require("multer")

/* -------------------------------------------------------------------------- */
/*                           upload file dependencies                          */
/* -------------------------------------------------------------------------- */

const geoStorage = "public/assets/geojson/"
const imgStorage = "public/assets/img_upload/"

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, geoStorage)
    },
    filename: (req, file, cb) => {
        cb(null, Date.now() + "-" + file.originalname)
    },
})

// const uploadGeoJson = multer({ storage: storage })
const upload = multer({ storage: storage }).single("path_upload");

/* -------------------------------------------------------------------------- */
/*                           end upload dependencies                          */
/* -------------------------------------------------------------------------- */

/* -------------------------------------------------------------------------- */
/*                                 insert data                                 */
/* -------------------------------------------------------------------------- */

exports.insertData = (req, res) => {
    const {
        kategori,
        deskripsi
    } = req.body
    db.query('INSERT INTO kat_shp SET ?', {
        kategori: kategori,
        deskripsi: deskripsi
    }, (err, results) => {
        if (err) {
            console.log(err)
        } else {
            res.redirect('/_admin')
        }
    })
}
exports.insertSHP = (req, res) => {
    upload(req, res, (err) => {
        if (err) {
            res.status(400).send("Something went wrong!");
        }
        const {
            nama_shp,
            sumber_shp,
            id_kat_shp,
            status_shp,
            deskripsi_shp,
            type_shp
        } = req.body

        db.query('INSERT INTO shp SET ?', {
            nama_shp: nama_shp,
            sumber_shp: sumber_shp,
            id_kat_shp: id_kat_shp,
            status_shp: status_shp,
            deskripsi_shp: deskripsi_shp,
            path_shp: req.file.destination + req.file.filename,
            type_shp: type_shp,
        }, (err, results) => {
            if (err) {
                console.log(err)
            } else {
                res.redirect('/_listShp');
            }
        })
    });
}

exports.insertStyleSHP = (req, res) => {
    let val = Object.values(req.body)
    db.query('INSERT INTO styleshp (prop_shp, color_prop, id_shp, style_by) VALUES ?', [val],
        (err, results) => {
            if (err) {
                console.log(err)
            } else {
                res.redirect('/_listShp')
            }
        })
}
exports.insertLoi = (req, res) => {
    const {
        pengirim,
        email,
        afiliasi,
        web_afiliasi,
        jenis_afiliasi,
        negara,
        ketertarikan,
        role,
        deskripsi,
        file
    } = req.body
    db.query('INSERT INTO loi SET ?', {
        pengirim: pengirim,
        email: email,
        afiliasi: afiliasi,
        web_afiliasi: web_afiliasi,
        jenis_afiliasi: jenis_afiliasi,
        negara: negara,
        ketertarikan: ketertarikan,
        role: role,
        deskripsi: deskripsi,
        file: file
    }, (err, results) => {
        if (err) {
            res.render('thankspage', {
                h1: 'Gagal!',
                h2: 'Letter of Interest anda gagal terkirim',
                p: 'LoI anda gagal dikirim. Meski begitu, anda dapat mengirimkannya secara langsung <br>ke email kami, admin@bentangkalimantan.org'
            })
            console.log(err)
        } else {
            res.render('thankspage', {
                h1: 'Congratulations!',
                h2: 'Letter of Interest anda berhasil terkirim',
                p: 'Terima kasih atas ketertarikan anda, pantau terus status LoI anda melalui email atau kunjungi'
            })
            console.log(results)
        }
    })
}

exports.insertProject = (req, res) => {
    upload(req, res, (err) => {
        if (err) {
            res.status(400).send("Something went wrong!");
        }
        const {
            funding,
            jenis_afiliasi,
            negara,
            lokasi_project,
            start_project,
            end_project,
            estimasi_budget,
            judul_project,
            deskripsi_project,
            visibility,
            status_project
        } = req.body

        db.query('INSERT INTO project SET ?', {
            funding: funding,
            jenis_afiliasi: jenis_afiliasi,
            negara: negara,
            lokasi_project: lokasi_project,
            start_project: start_project,
            end_project: end_project,
            estimasi_budget: estimasi_budget,
            judul_project: judul_project,
            deskripsi_project: deskripsi_project,
            logo: req.file.destination + req.file.filename,
            visibility: visibility,
            status_project: status_project
        }, (err, results) => {
            if (err) {
                console.log(err)
            } else {
                res.redirect('/_project');
                console.log(results)
            }
        })
    });
}

exports.insertKatPPI = (req, res) => {
    const {
        indikator,
        kat_ppi
    } = req.body
    db.query('INSERT INTO kat_ppi SET ?', {
        indikator: indikator,
        kat_ppi: kat_ppi
    }, (err, results) => {
        if (err) {
            console.log(err)
        } else {
            res.redirect('/_katPPI')
        }
    })
}

exports.insertDetailPPI = (req, res) => {
    let id = req.params.id_katppi
    let ppi = req.params.kat_ppi
    let indikator = req.params.indikator
    const {
        id_katppi,
        kat_ppi,
        rincian,
        datadasar,
        indikatorcapaian2025,
        satuan,
    } = req.body
    db.query('INSERT INTO detail_kat_ppi SET ?', {
        id_katppi: id_katppi,
        kat_ppi: kat_ppi,
        ppi:ppi,
        rincian: rincian,
        data_dasar: datadasar,
        indikator_capaian_2025: indikatorcapaian2025,
        satuan: satuan
    }, (err, results) => {
        if (err) {
            console.log(err)
        } else {
            res.redirect('/_detailIndikator/' + id_katppi + '/' + ppi + '/' + kat_ppi)
        }
    })
}
exports.updateindikatorppi = (req, res) => {
    let ppi = req.params.ppi
    let satuan = req.params.satuan
    let id_kat_ppi = req.params.id_katppi
    let id_detail_kat_ppi = req.params.id_detail_kat_ppi
    let rincian = req.params.rincian
    const {
        // id_detail_kat_ppi,
        // id_kat_ppi,
        last_update,
        update_capaian,
        satuan2,
    } = req.body
    db.query('INSERT INTO update_indikator_ppi SET ?', {
        id_detail_kat_ppi: id_detail_kat_ppi,
        id_kat_ppi: id_kat_ppi,
        ppi:ppi,
        update_capaian: update_capaian,
        satuan:satuan,
        last_update: last_update,
    }, (err, results) => {
        if (err) {
            console.log(err)
        } else {
            res.redirect('/_updatecapaian/' + id_detail_kat_ppi + '/' + ppi + '/' + id_kat_ppi + '/' + rincian + '/' + satuan)
        }
    })
}

/* -------------------------------------------------------------------------- */
/*                               end insert data                              */
/* -------------------------------------------------------------------------- */

/* -------------------------------------------------------------------------- */
/*                                 delete data                                */
/* -------------------------------------------------------------------------- */

exports.deleteKat = (req, res) => {
    let id = req.params.id
    db.query('DELETE FROM kat_shp WHERE id = ?', [id], (err, results) => {
        if (err) {
            console.log(err)
        } else {
            db.query('UPDATE shp SET ? WHERE id_kat_shp= ?', [{ id_kat_shp: 15 }, id], (err, kat_shp) => {
                if (err) throw err;
                res.redirect('/_admin')
                console.log(kat_shp)
            });
        }
    })
}

exports.deleteLoi = (req, res) => {
    let id = req.params.id_loi
    db.query('DELETE FROM loi WHERE id_loi = ?', [id], (err, results) => {
        if (err) {
            console.log(err)
        } else {
            res.redirect('/_listLoi')
        }
    })
}

exports.deleteShp = (req, res) => {
    let id = req.params.id_shp
    db.query('DELETE FROM shp WHERE id_shp = ?', [id], (err, results) => {
        if (err) {
            console.log(err)
        } else {
            res.redirect('/_listShp')
        }
    })
}

exports.detleteStyle = (req, res) => {
    let val = Object.values(req.body)
    db.query('DELETE FROM styleshp WHERE id_style ?', [val],
        (err, results) => {
            if (err) {
                console.log(err)
            } else {
                res.redirect('/_listShp')
            }
        })
}

exports.deleteProject = (req, res) => {
    let id = req.params.id_project
    db.query('DELETE FROM project WHERE id_project = ?', [id], (err, results) => {
        if (err) {
            console.log(err)
        } else {
            res.redirect('/_listProject')
        }
    })
}

/* -------------------------------------------------------------------------- */
/*                               end delete data                              */
/* -------------------------------------------------------------------------- */

/* -------------------------------------------------------------------------- */
/*                                 updata data                                */
/* -------------------------------------------------------------------------- */

exports.editKat = (req, res) => {
    let id = req.params.id
    db.query('SELECT * FROM kat_shp WHERE id = ?', id, (err, results) => {
        if (err) {
            console.log(err)
        } else {
            res.render('_editKat', {
                kategori: results[0]
            })
        }
    })
}

exports.updateKat = (req, res) => {
    let newData = req.body
    let id = req.params.id
    db.query('UPDATE kat_shp SET ? WHERE id= ?', [newData, id], (err, results) => {
        if (err) {
            console.log(err)
        } else {
            res.redirect('/_admin')
        }
    })
}

exports.editLoi = (req, res) => {
    let id = req.params.id_loi
    db.query('SELECT * FROM loi WHERE id_loi = ?', id, (err, results) => {
        if (err) {
            console.log(err)
        } else {
            res.render('_editLoi', {
                detailLoi: results[0]
            })
        }
    })
}

exports.updateLoi = (req, res) => {
    let newData = req.body
    let id = req.params.id_loi
    db.query('UPDATE loi SET ? WHERE id_loi= ?', [newData, id], (err, results) => {
        if (err) {
            console.log(err)
        } else {
            res.redirect('/_listLoi')
        }
    })
}

exports.editShp = (req, res) => {
    let id = req.params.id_shp
    db.query('SELECT shp.id_shp, shp.nama_shp, shp.id_kat_shp, shp.sumber_shp, shp.status_shp, shp.deskripsi_shp, kat_shp.id, kat_shp.kategori FROM shp LEFT JOIN kat_shp ON shp.id_kat_shp = kat_shp.id WHERE shp.id_shp = ?', id,
        (err, results) => {
            if (err) throw err;
            db.query('SELECT * FROM kat_shp', function (err, kat_shp) {
                if (err) throw err;
                res.render('_editShp', { shp: results[0], kat_shp: kat_shp });
                console.log(kat_shp)
            });
        })
}

exports.updateShp = (req, res) => {
    upload(req, res, (err) => {
        let id = req.params.id_shp
        let file = req.file
        const {
            nama_shp,
            sumber_shp,
            id_kat_shp,
            deskripsi_shp,
            status_shp,
            path_shp
        } = req.body

        if (err) {
            res.status(400).send("Something went wrong!");
        }
        if (file === undefined) {
            db.query('UPDATE shp SET ? WHERE id_shp = ?', [{
                nama_shp: nama_shp,
                sumber_shp: sumber_shp,
                id_kat_shp: id_kat_shp,
                deskripsi_shp: deskripsi_shp,
                status_shp: status_shp,
            }, id], (err, results) => {
                if (err) {
                    console.log(err)
                } else {
                    res.redirect('/_listShp')
                }
            })
        } else {
            db.query('UPDATE shp SET ? WHERE id_shp = ?', [{
                nama_shp: nama_shp,
                sumber_shp: sumber_shp,
                id_kat_shp: id_kat_shp,
                deskripsi_shp: deskripsi_shp,
                path_shp: req.file.destination + req.file.filename,
                status_shp: status_shp,
            }, id], (err, results) => {
                if (err) {
                    console.log(err)
                } else {
                    res.redirect('/_listShp')
                }
            })
        }
    });
}

exports.editProject = (req, res) => {
    let id = req.params.id_project
    db.query('SELECT * FROM project WHERE id_project = ?', id, (err, results) => {
        if (err) {
            console.log(err)
        } else {
            res.render('_editProject', {
                project: results[0]
            })
        }
    })
}

exports.updateProject = (req, res) => {
    upload(req, res, (err) => {
        let id = req.params.id_project
        let file = req.file
        const {
            funding,
            jenis_afiliasi,
            negara,
            lokasi_project,
            start_project,
            end_project,
            estimasi_budget,
            judul_project,
            deskripsi_project,
            visibility,
            logo,
            status_project
        } = req.body

        if (err) {
            res.status(400).send("Something went wrong!");
        }
        if (file === undefined) {
            db.query('UPDATE project SET ? WHERE id_project = ?', [{
                funding: funding,
                jenis_afiliasi: jenis_afiliasi,
                negara: negara,
                lokasi_project: lokasi_project,
                start_project: start_project,
                end_project: end_project,
                estimasi_budget: estimasi_budget,
                judul_project: judul_project,
                deskripsi_project: deskripsi_project,
                visibility: visibility,
                status_project: status_project
            }, id], (err, results) => {
                if (err) {
                    console.log(err)
                } else {
                    res.redirect('/_listProject')
                }
            })
        } else {
            db.query('UPDATE project SET ? WHERE id_project = ?', [{
                funding: funding,
                jenis_afiliasi: jenis_afiliasi,
                negara: negara,
                lokasi_project: lokasi_project,
                start_project: start_project,
                end_project: end_project,
                estimasi_budget: estimasi_budget,
                judul_project: judul_project,
                deskripsi_project: deskripsi_project,
                logo: req.file.destination + req.file.filename,
                visibility: visibility,
                status_project: status_project
            }, id], (err, results) => {
                if (err) {
                    console.log(err)
                } else {
                    res.redirect('/_listProject')
                }
            })
        }
    });
}
/* -------------------------------------------------------------------------- */
/*                               end update data                              */
/* -------------------------------------------------------------------------- */

exports.styleShp = (req, res) => {
    let id = req.params.id_shp
    db.query('SELECT * FROM shp WHERE id_shp = ?', id, (err, results) => {
        if (err) {
            console.log(err)
        } else {
            res.render('_styleShp', {
                infoShp: results[0]
            })
        }
    })
}
// detail shp
exports.detailShp = (req, res) => {
    let id = req.params.id_shp
    db.query('SELECT * FROM shp WHERE shp.id_shp = ?', id,
        (err, detailShp) => {
            if (err) throw err;
            db.query('SELECT * FROM styleshp WHERE styleshp.id_shp = ?', id,
                (err, styleshp) => {
                    if (err) {
                        res.redirect('_admin');
                    } else {
                        let fin = JSON.stringify(styleshp)
                        res.render('_detailShp', { detailShp: detailShp[0], styleshp: styleshp })
                        console.log(styleshp)
                    }
                })
        })
}

exports.detailStyle = (req, res) => {
    let id = req.params.id_shp
    db.query('SELECT * FROM shp WHERE shp.id_shp = ?', id,
        (err, detailShp) => {
            if (err) throw err;
            db.query('SELECT * FROM styleshp WHERE styleshp.id_shp = ?', id,
                (err, styleshp) => {
                    if (err) throw err;
                    let fin = JSON.stringify(styleshp)
                    res.render('_detailStyle', { detailShp: detailShp[0], styleshp: styleshp })
                })
        })
}

exports.editStyle = (req, res) => {
    let id = req.params.id_shp
    db.query('SELECT * FROM shp WHERE shp.id_shp = ?', id,
        (err, detailShp) => {
            if (err) throw err;
            db.query('SELECT * FROM styleshp WHERE styleshp.id_shp = ?', id,
                (err, styleshp) => {
                    if (err) throw err;
                    let fin = JSON.stringify(styleshp)
                    res.render('_editstyle', { detailShp: detailShp[0], styleshp: styleshp })
                    console.log(styleshp)
                })
        })
}

exports.updateStyleShp = (req, res) => {
    let val = Object.values(req.body)
    db.query('INSERT INTO styleshp (id_style, color_prop, label_style) VALUES ? ON DUPLICATE KEY UPDATE color_prop = values(color_prop),label_style = values(label_style) ', [val], (err, results) => {
        if (err) {
            console.log(err)
        } else {
            res.redirect('/_listShp')
        }
    })
}

// exports.detailProject = (req, res) => {
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
// }


















