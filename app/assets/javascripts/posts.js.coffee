$ ->
  $(".post").click ".button", ->
    div = $(this)
    console.log $(this).data('post-id')
    $.post '/posts/'+div.data('post-id'),
      {
        authenticity_token: $("meta[name=csrf-token]").attr('content'),
        _method: 'put'
      },
      (post)->
        div.find(".button .score").text(post.score)