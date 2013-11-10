'use strict'

describe 'Directive: navbar', () ->
  beforeEach module 'fredekApp'
  beforeEach module 'views/navbar.html'

  pages = {}
  scope = {}
  element = {}
  links = {}


  beforeEach inject ($rootScope, $compile, _pages_, _$location_) ->
    pages = _pages_
    element = angular.element '<navbar></navbar>'
    scope = $rootScope.$new()
    element = $compile(element) scope
    scope.$digest()
    links = element.find 'a'

  describe 'links', ->

    it 'should exist for each page', ->
      expect(links.length).toBe pages.length

    it 'should have the correct names', ->
      links.each (index, element) ->
        expect(element.text).toBe pages[index].name

    describe 'when clicked on', ->

      it 'should rediect to currect location', inject ($window) ->
        links.each (index, element) ->
          element.click()
          expect($window.location.hash).toEqual '#' + pages[index].path

      it 'should have active class for current page', inject ($location) ->
        links.each (index, element) ->
          scope.$apply -> $location.path(pages[index].path)
          expect($(element).parent().hasClass('active')).toEqual true







