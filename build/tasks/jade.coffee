module.exports = ->
  @loadNpmTasks 'grunt-contrib-jade'

  @config 'jade',
    html:
      files: [
        expand: true
        cwd: 'app/templates/'
        src: '*.jade'
        dest: 'app/'
        ext: '.html'
      ]
      options:
        'pretty': true