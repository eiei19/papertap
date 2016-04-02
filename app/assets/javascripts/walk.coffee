$ ->
  uploadFile = (file) ->
    url = '/walk_through/upload'
    xhr = new XMLHttpRequest
    fd = new FormData
    xhr.open 'POST', url, true

    xhr.onreadystatechange = ->
      if xhr.readyState == 4 and xhr.status == 200
        console.log xhr.responseText
      return

    fd.append 'file', file
    fd.append 'authenticity_token', $('meta[name="csrf-token"]').attr("content")
    xhr.send fd
    return

  $(document).on 'drop', '#dropzone', (e) ->
    e.preventDefault()
    file = e.originalEvent.dataTransfer.files[0]
    uploadFile(file)
    return

  debugQtyAreas = () ->
    return

  areaToString = (area) ->
    (if typeof area.id == 'undefined' then '' else area.id + ': ') + parseInt(area.x) + ':' + parseInt(area.y) + ' ' + area.width + 'x' + area.height + '\n'


  $('img#example').selectAreas
    minSize: [
      20
      20
    ]
    width: 800
    onChanged: debugQtyAreas
    areas: []

    $('#btnViewRel').click ->
      text = ""
      areas = $('img#example').selectAreas('relativeAreas')
      $.each areas, (id, area) ->
        text += areaToString(area)
        return
      console.log(text)

      text = ""
      areas = $('img#example').selectAreas('areas')
      $.each areas, (id, area) ->
        text += areaToString(area)
        return
      console.log(text)

      return