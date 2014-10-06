module.exports = ->
  @loadNpmTasks 'grunt-contrib-cssmin'

  # Minify the distribution CSS.
  @config 'cssmin',
    custom:
      files:
        'dist/styles/main.min.css': ['app/styles/main.css']
    libs:
      files:
        'dist/styles/vendor/libs.min.css': [
          'app/bower_components/bower-foundation/css/normalize.css'
          'app/bower_components/bower-foundation/css/foundation.css'
        ]
