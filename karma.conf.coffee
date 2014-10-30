istanbul = require 'browserify-istanbul'

module.exports = (config) ->
  config.set

    basePath: ''

    frameworks: ['browserify', 'jasmine']

    files: [
      'coffee/compiled/spec/*Spec.js'
    ]

    exclude: [
    ]

    preprocessors: {
      'coffee/compiled/spec/*Spec.js': ['browserify']
    }

    browserify:
      debug: true
      prebundle: (bundle) ->
        bundle.transform istanbul({
          ignore: ['**/spec/**']
        })

    reporters: ['progress', 'coverage']

    coverageReporter:
      reporters: [
        {type: 'html', dir: 'coverage/'}
        {type: 'text-summary'}
      ]

    port: 9876

    colors: true

    logLevel: config.LOG_INFO

    autoWatch: true

    browsers: ['PhantomJS']

    singleRun: false
