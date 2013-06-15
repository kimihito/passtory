$ ->
  $(document).click ".post .button", (e)->
    div = $(e.target).parents(".post")
    console.log $(this).data('post-id')
    $.post '/posts/'+div.data('post-id'),
      {
        authenticity_token: $("meta[name=csrf-token]").attr('content2'),
        _method: 'put'
      },
      (post)->
        div.find(".button .score").text(post.score)
