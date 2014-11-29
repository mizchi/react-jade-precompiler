# React Jade Precompiler

Write react-jade template, Run as pure react virtual DOM.

You don't have to use jsx-transformer nor react-jade runtime in production.

## How to use

```
$ npm install -g mizchi/react-jade-precompiler 
$ react-jade-precompiler template.jade # output to stdout
$ react-jade-precompiler template.jade -o template.js # generate file
```

It's runnable!

```js
var tmpl = require('./template');
var React = require('react');

React.createClass(
  render: function(){
    return tmpl({foo: 1, bar: ["param"]}); //=> Generate virtual DOM 
	}
)
```

## Options

- `--header(-h)` Add intro for your template. default=`module.exports =`
- `--out(-o)`

## CAUTION

It lost local context so you have to inject all params as template arguments.

## LICENSE

MIT
