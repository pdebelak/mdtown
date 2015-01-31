class AceEditor
  
  constructor: ->
    @editor = ace.edit 'editor' if $('#editor').length
    @createEditor() if @editor
      
  createEditor: ->
    @editor.getSession().setMode("ace/mode/markdown");
    @editor.getSession().on 'change', =>
      value = @editor.getValue()
      $('#output').html marked value
    
  

(exports ? this).AceEditor = AceEditor