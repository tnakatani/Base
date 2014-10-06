module.exports = ->
  @loadNpmTasks 'grunt-autoprefixer'

  @config 'autoprefixer',
    options:
      browser: 'last 2 versions'
    no_dest:
      src: 'app/styles/main.css'