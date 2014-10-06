module.exports = ->
  @loadNpmTasks 'grunt-contrib-uglify'

  @config 'uglify'
    main:
      options:
        banner: '/*! <%= pkg.name %> <%= grunt.template.today("yyyy-mm-dd") %> */\n'
      files:
        'dist/scripts/vendor/libs.min.js': 'dist/scripts/vendor/libs.js'
    modernizr:
      options:
        banner: '/*! <%= pkg.name %> <%= grunt.template.today("yyyy-mm-dd") %> */\n'
      files:
        'dist/scripts/vendor/modernizr.min.js': 'app/bower_components/modernizr/modernizr.js'