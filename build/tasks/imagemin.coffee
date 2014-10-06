module.exports = ->
  @loadNpmTasks 'grunt-contrib-imagemin'

  # PNG files consistently fails:
  # "Warning: Error: Command failed:  in file app/images/something.png"
  @config 'imagemin',
    # static:
    #   options:
    #     optimizationLevel: 3
    #   files: [
    #     'dist/images/foo.png': 'app/images/foo.png'
    #   ]
    dynamic:
      options:
        optimizationLevel: 5
      files: [
        expand: true
        cwd: 'app/images'
        # src: ['*.png']
        src: ['**/*.{png,jpg,gif}']
        dest: 'dist/images'
      ]
