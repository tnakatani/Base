module.exports = ->
  @loadNpmTasks "grunt-contrib-clean"

  # Wipe out previous builds and test reporting.
  @config "clean",
    all: "dist/**/*"
    css: "dist/styles/**/*"
    js: "dist/scripts/**/*"
    img: "dist/images/**/*"
