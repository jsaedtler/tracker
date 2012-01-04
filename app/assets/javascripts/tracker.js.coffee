#alert 'tracker loaded'
tracker =
  track: (params) ->
    (console.log key; console.log params[key]) for key of params
    $(document).ready (x) ->
      # $('script[src$="tracker.js"]').after "<iframe src='/scripts?ref=" + params['ref'] + "' style='width:0px height:0px' />"
      $('#tracking-scripts').load "/scripts?ref=" + params['ref']

window.hf = tracker
