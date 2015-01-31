$(document).on "ready page:load", ->
  $('#editor, #output').height $(window).height()
  
  new AceEditor()