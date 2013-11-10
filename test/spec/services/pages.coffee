'use strict'

describe 'Service: Pages', () ->

  # load the service's module
  beforeEach module 'fredekApp'

  # instantiate service
  Pages = {}

  beforeEach inject (_pages_) ->
    Pages = _pages_

  it 'have three pages', () ->
    expect(Pages.length).toBe 3
