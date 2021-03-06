clamp = (value, min, max) -> Math.min Math.max(min, value), max

Template.vumeter.helpers
  meter: (vumeter) ->
    'green': clamp vumeter, 0, 50
    'yellow': clamp vumeter - 50, 0, 35
    'red': clamp vumeter - 85, 0, 15
    'blank': 100 - vumeter
