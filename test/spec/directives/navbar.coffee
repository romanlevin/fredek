'use strict'

describe 'Directive: navbar', () ->
  Given module 'fredekApp.mock.services.pages'
  Given module 'fredekApp.directives'
  Given module 'views/navbar.html'

  Given inject ($rootScope, $compile, _$location_, _pages_) ->
    @pages = _pages_
    element = angular.element '<navbar></navbar>'
    @$scope = $rootScope.$new()
    @element = $compile(element) @$scope
    @$scope.$digest()
    @links = @element.find 'a'
    @$location = _$location_

  describe 'links', ->
    Invariant -> @links.length == @pages.length
    Invariant -> @links[@index].text == @pages[@index].name

    When -> @index = 0
    When -> @index = 1
    When -> @index = 2

    describe 'are active for correct paths', ->
      Invariant -> $(@links[@index]).parent().hasClass('active') == true
      When -> @$scope.$apply -> @$location.path @pages[@index].path
      Given -> @index = 0
      Given -> @index = 1
      Given -> @index = 2
