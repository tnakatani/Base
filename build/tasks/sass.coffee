module.exports = ->
  @loadNpmTasks "grunt-sass"

  @config "sass",
    custom:
      options:
        sourceMap: true
      files:
        'app/styles/main.css': 'app/styles/*.scss'