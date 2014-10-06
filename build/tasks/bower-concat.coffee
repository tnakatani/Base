module.exports = ->
  @loadNpmTasks 'grunt-bower-concat'

  @config 'bower_concat',
    all:
      dest: 'dist/scripts/vendor/libs.js'
      exclude: [
        'underscore'
        'normalize-css'
        'bower-foundation',
        'modernizr'
        'requirejs'
        'requirejs-text'
      ]
      dependencies:
        'lodash': 'jquery'
        'backbone': 'lodash'
      mainFiles:
        'normalize.css': 'app/bower_components/normalize-css'