root = document.documentElement
themeName = 'pico8-syntax'

module.exports =
  activate: (state) ->
    atom.config.observe "#{themeName}.darkMode", (value) ->
      setDarkMode(value)

deactivate: ->
  unsetDarkMode()

setDarkMode = (darkMode) ->
  if darkMode
    root.classList.add("pico8-dark-mode")
  else
    unsetDarkMode()

unsetDarkMode = ->
  root.classList.remove("pico8-dark-mode")
