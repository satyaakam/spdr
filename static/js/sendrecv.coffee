##
##
## TODO:  use  moz-chunked-arraybuffer for firefeox
##
##
class Downloader

  constructor: (url,on_update,on_finish) ->
    start_time = (new Date()).getTime()
    xhr = new XMLHttpRequest
    xhr.open 'GET',url + "?randomize="+ new Date(), true
    xhr.overrideMimeType 'text/plain; charset=x-user-defined'
    #xhr.responseType = 'arraybuffer'
    xhr.onreadystatechange = ->
      snow = if xhr.responseText then xhr.responseText.length else 0
      #snow = if xhr.response then xhr.response.length else 0
      tnow = (new Date()).getTime()
      switch( xhr.readyState) 
        when 0 then
        when 1 then
        when 2 then
        when 3 
          on_update(tnow - start_time, snow );
        when 4 
          on_finish(tnow - start_time, snow )

    xhr.send()


class Uploader
  constructor: ( url, size, on_update, on_finish) ->
    start_time = (new Date()).getTime()
    xhr = new XMLHttpRequest
    xhr.open 'POST',url , true
    xhr.overrideMimeType 'text/plain; charset=x-user-defined'
    xhr.onreadystatechange = (evt) ->
      #snow = if xhr.responseText then xhr.responseText.length else 0
      # No way to know how much uploaded ?
      snow=size
      tnow = (new Date()).getTime()
      switch( xhr.readyState) 
        when 0 then
        when 1 then
        when 2 then
        when 3 
          on_update(tnow - start_time, snow );
        when 4 
          on_finish(tnow - start_time, snow )

    str = ""
    str += Math.random().toString(36).substr(2) while str.length < size
    str.substr 0, size
    #xhr.send()
    fd = new FormData()
    fd.append('data',str);
    xhr.send(fd)
