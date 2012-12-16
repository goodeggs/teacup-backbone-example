{Kid, PartyView} = window.app

describe 'PartyView', ->
  {view, kids} = {}
  beforeEach ->
    kids = (new Kid(name: name) for name in [ 'Noah', 'Mary Kate', 'Henry Hugo', 'Hazel', 'Mia', 'Kira' ])
    view = new PartyView({kids})
    view.render()

  it 'renders list of kids', ->
    expect(view.$('li').length).to.be 6

  describe 'adding', ->
    it 'adds new name', ->
      view.$('form input').val('New Name')
      view.$('form').submit()
      expect(view.$('li').length).to.be 7

    it 'does not add empty name', ->
      view.$('form input').val('')
      view.$('form').submit()
      expect(view.$('li').length).to.be 6

