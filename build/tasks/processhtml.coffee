module.exports = ->
  @loadNpmTasks 'grunt-processhtml'

  # Minify the distribution CSS.
  @config 'processhtml',
    dist:
      files:
        'dist/index.html': ['app/index.html']
