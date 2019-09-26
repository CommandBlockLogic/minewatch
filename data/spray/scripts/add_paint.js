const gm = require('gm')
const path = require('path')

const fileName = '1-sanity'

gm(path.join(__dirname, `${fileName}.png`))
    .size(function (err, value) {
        if (err) throw err
        console.log(value.res)
    })
// const height = image.height()
// const width = image.width()
// const color = image.getPixel(0, 0)
