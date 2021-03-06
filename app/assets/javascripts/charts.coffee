document.addEventListener 'turbolinks:load', ->
  $($('input[type=text], textarea')[0]).focus()

  $(document).on 'click', '.chart_display [data-palace-id]', (e) ->
    palace_id = $(e.target).parents('.palace').data('palace-id')
    $('.notes .palace-notes').addClass('d-none')
    $('#notes-' + palace_id).removeClass('d-none')

  $(document).on 'keyup', 'input#chart-search', (e) ->
    console.log('laggerbagger')
    regexp = new RegExp(this.value, "i")
    if this.value.length <= 1
      $('.table-list .table-body .row').removeClass('d-none')
    else
      $.each $('.table-list .table-body .row'), (index, object) ->
        $(object).toggleClass('d-none', !regexp.test(object.dataset.search_text))
