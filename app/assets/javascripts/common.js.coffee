$ ->
  $('.js-add-form').click (e) ->
    last = $(this).closest('.js-form-group').find('.form-part:last')
    clone = last.clone().insertAfter(last)
    inputs = $('input', clone).each(->
      s = $(this)
      s.val ''
      id = s.attr('id')
      name = s.attr('name')
      jsfor = s.attr('for')
      if id?
        i = parseInt(id.match(/\d+/))
        s.attr 'id', RegExp.leftContext + (i + 1) + RegExp.rightContext
      if name?
        i = parseInt(name.match(/\d+/))
        s.attr 'name', RegExp.leftContext + (i + 1) + RegExp.rightContext
      if jsfor?
        i = parseInt(jsfor.match(/\d+/))
        s.attr 'for', RegExp.leftContext + (i + 1) + RegExp.rightContext
      return
    )
    title = clone.find('.js-title')
    if title?
      i = parseInt(title.text().match(/\d+/))
      title.text RegExp.leftContext + (i + 1) + RegExp.rightContext
