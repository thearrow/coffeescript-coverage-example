module.exports = class Utils

  Array::empty = ->
    @.length is 0

  Array::merge = (other) ->
    Array::push.apply @, other

  Array::move = (from, to) ->
    @splice to, 0, @splice(from, 1)[0]

  @capitalize = (name) ->
    name[0].toUpperCase() + name.slice(1)
  
  @isArray = Array.isArray ||
    ( value ) -> return {}.toString.call( value ) is '[object Array]'

  @stripPound = (id) ->
    id.toLowerCase().substring(1)