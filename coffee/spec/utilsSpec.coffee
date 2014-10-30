Utils = require '../utils'

module.exports = describe 'Utilities', ->
  
  it 'should detect an empty array', ->
    expect([].empty()).toBeTruthy()
    expect([1,2,3].empty()).toBeFalsy()

  it 'should merge two arrays', ->
    one = [1, 2, 3]
    two = [4, 5, 6]
    one.merge two
    expect(one).toEqual [1, 2, 3, 4, 5, 6]

  it 'should reorder an array', ->
    a = ['a', 'b', 'c']
    a.move 0, 1
    expect(a).toEqual ['b', 'a', 'c']
    a.move 2, 0
    expect(a).toEqual ['c', 'b', 'a']

  it 'should capitalize a word', ->
    expect(Utils.capitalize('word')).toEqual 'Word'

  it 'should recognize an array', ->
    a = []
    b = "derp"
    expect(Utils.isArray a).toBeTruthy()
    expect(Utils.isArray b).toBeFalsy()
    
  it 'should strip a leading pound sign', ->
    expect(Utils.stripPound('#derp')).toEqual 'derp'

  
    