module.exports = ->
  @loadNpmTasks 'grunt-contrib-copy'

  @config 'copy',
    html:
      expand: true
      src: 'app/404.html'
      dest: 'dist/'
      flatten: true
    css:
      expand: true
      cwd: 'app/styles/'
      src: '**/*.css'
      dest: 'dist/styles/'