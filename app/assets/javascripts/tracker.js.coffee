#alert 'tracker loaded'
tracker =
  track: (params) ->
    (console.log key; console.log params[key]) for key of params
    $(document).ready (x) ->
      $('script[src$="tracker.js"]').after "<iframe src='/scripts' />"

window.hf = tracker
