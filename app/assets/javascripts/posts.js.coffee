$ ->
  $(document).click ".post .button", (e)->
    div = $(e.target).parents(".post")
    div.find(".button .score").hide();
    $.post '/posts/'+div.data('post-id'),
      {
        authenticity_token: $("meta[name=csrf-token]").attr('content2'),
        _method: 'put'
      },
      (post)->
        div.find(".button .score").text(post.score)
        div.find(".button .score").fadeIn();
