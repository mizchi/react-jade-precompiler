path = require 'path'
jade = require 'react-jade'
fs = require 'fs'

argv = require('optimist')
  .alias('o', 'out')
  .alias('h', 'header')
  .default('header', "module.exports = ")
  .argv

cwd = process.cwd()
fpath = path.join cwd, argv._[0]

tmpl = jade.compileFile(fpath)
tmplStr =  argv.header + tmpl.toString()

if argv.out
  output = path.join cwd, argv.out
  fs.writeFileSync output, tmplStr
else
  console.log tmplStr
