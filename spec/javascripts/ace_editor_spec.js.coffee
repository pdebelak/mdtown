describe 'AceEditor', ->
  
  it 'does nothing if there is no "#editor"', ->
    aceEditor = new AceEditor()
    spyOn aceEditor, 'createEditor'
    aceEditor.constructor()
    expect(aceEditor.editor).not.toBeDefined()
    expect(aceEditor.createEditor).not.toHaveBeenCalled()
    
  describe 'with an "#editor"', ->
    
    beforeEach ->
      $('#jasmine_content').append '<div id="editor"></div>'
      @aceEditor = new AceEditor()
    
    afterEach ->
      $('#editor').remove()
    
    it 'defines editor', ->
      expect(@aceEditor.editor).toBeDefined()
      
    it 'calls createEditor', ->
      spyOn @aceEditor, 'createEditor'
      @aceEditor.constructor()
      expect(@aceEditor.createEditor).toHaveBeenCalled()