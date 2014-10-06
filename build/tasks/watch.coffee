module.exports = ->
  @loadNpmTasks 'grunt-contrib-watch'

  @config 'watch'
    html:
      files: ['app/templates/*.jade']
      tasks: ['html']
    scripts:
      files: ['app/scripts/*.js']
      tasks: ['scripts']
    styles:
      files: ['app/styles/*.scss']
      tasks: ['styles']