module.exports = (grunt)->
  require('time-grunt') grunt

  # Read package.json setting
  # Todo: add templates to initConfig
  @initConfig
    pkg: @file.readJSON('package.json')
    dirs:
      src: 'app'
      output: 'dist'
      #bower?

  # Load task configurations.
  @loadTasks "build/tasks"

  # HTML
  @registerTask "html", [
    "jade:html"
    "processhtml"
    "copy:html"
  ]

  # STYLES
  @registerTask "css", [
    "sass:custom"
    "autoprefixer"
    "cssmin:libs"
    "cssmin:custom"
    "copy:css"
  ]

  # IMAGES
  @registerTask "img", [
    "imagemin:dynamic"
  ]

  # SCRIPTS
  @registerTask "js", [
    "bower_concat"
    "uglify"
  ]

  # WATCH
  @registerTask "mon", [
    "watch"
  ]

  # Default Task
  @registerTask "default", [
    "html"
    "css"
    "js"
    "img"
    "mon"
  ]
