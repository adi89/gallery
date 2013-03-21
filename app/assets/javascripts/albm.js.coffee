class Home
  @document_ready: ->
    $('#form').on('click', 'a[data-clear-form]', Home.clear_form)
    photo= $('.photo').length;
    $('#slider').slider({min: 0, max: photo, step: 1, slide: Home.sliding })


  @clear_form: (e) ->
    e.preventDefault()
    $('#form').empty()

  @sliding: (e, ui) ->
    album_id= $('#album').data('album_id')
    count = ui.value
    settings =
      dataType: 'script'
      type: 'get'
      url: "/albums/#{album_id}/filter?count=#{count}"
    $.ajax(settings)
$(document).ready(Home.document_ready)
