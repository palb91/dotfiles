## Qutebrowser configuration

# Init
config.load_autoconfig(False)


# Default pages / files / directories
_ddg  = 'https://start.duckduckgo.com/?kae=t&q={}'
_edit = 'foot -T float vim {file}'
_font = {'family': 'Terminus', 'size': '10pt'}


# Settings
# Sessions.....................................................................
c.auto_save.session                 = True
# Completion...................................................................
c.completion.height                 = '40%'
c.completion.scrollbar.padding      = 1
c.completion.scrollbar.width        = 8
c.completion.shrink                 = True
c.completion.timestamp_format       = "%d·%m·%Y %H:%M"
# Quit.........................................................................
c.confirm_quit                      = ['multiple-tabs', 'downloads']
# Content......................................................................
c.content.autoplay                  = False
c.content.cookies.accept            = 'no-unknown-3rdparty'
c.content.geolocation               = False
#c.content.mute                     = True
c.content.notifications             = False
c.content.pdfjs                     = True
c.content.register_protocol_handler = False
# Downloads....................................................................
c.downloads.location.remember       = False
c.downloads.position                = 'bottom'
# Editor.......................................................................
c.editor.command                    = _edit.split()
# Fonts........................................................................
c.fonts.contextmenu                 = 'default_size default_family'
c.fonts.default_family              = _font['family']
c.fonts.default_size                = _font['size']
c.fonts.prompts                     = 'default_size default_family'
# Hints........................................................................
c.hints.border                      = '1px solid #0077FF'
c.hints.chars                       = 'ctsrvdlgh'
c.hints.radius                      = 2
c.hints.scatter                     = False
c.hints.selectors["frame"]          = ['div', 'header', 'section', 'nav']
# Input........................................................................
c.input.partial_timeout             = 10000
# Messages.....................................................................
c.messages.timeout                  = 4000
# Tabs.........................................................................
c.tabs.background                   = True
c.tabs.mode_on_change               = 'restore'
c.tabs.position                     = 'left'
c.tabs.show                         = 'multiple'
c.tabs.undo_stack_size              = 20
c.tabs.width                        = 200
# URL..........................................................................
c.url.default_page                  = 'about:blank'
c.url.searchengines                 = {'DEFAULT': _ddg}
c.url.start_pages                   = 'about:blank'


# Colors
colors = {
  'bg':      '#000000',
  'fg':      '#777777',
  'bg_sel':  '#333333',
  'fg_sel':  '#FFFFFF',
  'error':   '#FF3333',
  'warning': '#FFBB33',
  'info':    '#0077FF',
  'special': '#00FF77',
  'hint':    'qlineargradient(x1:0,y1:0,x2:0,y2:0.5,stop:0 #07F,stop:1 #000)'
}
# Completion ..................................................................
c.colors.completion.category.bg                 = colors['bg_sel']
c.colors.completion.category.border.bottom      = colors['bg_sel']
c.colors.completion.category.border.top         = colors['bg_sel']
c.colors.completion.category.fg                 = colors['fg_sel']
c.colors.completion.even.bg                     = colors['bg']
c.colors.completion.fg                          = [colors['fg'],
                                                   colors['fg'],
                                                   colors['info']]
c.colors.completion.item.selected.bg            = colors['bg']
c.colors.completion.item.selected.border.bottom = colors['bg']
c.colors.completion.item.selected.border.top    = colors['bg']
c.colors.completion.item.selected.fg            = colors['fg_sel']
c.colors.completion.item.selected.match.fg      = colors['special']
c.colors.completion.match.fg                    = colors['info']
c.colors.completion.odd.bg                      = colors['bg']
c.colors.completion.scrollbar.bg                = colors['bg']
c.colors.completion.scrollbar.fg                = colors['bg_sel']
# Context Menu.................................................................
c.colors.contextmenu.disabled.bg                = colors['bg']
c.colors.contextmenu.disabled.fg                = colors['bg_sel']
c.colors.contextmenu.menu.bg                    = colors['bg']
c.colors.contextmenu.menu.fg                    = colors['fg_sel']
c.colors.contextmenu.selected.bg                = colors['bg_sel']
c.colors.contextmenu.selected.fg                = colors['fg_sel']
# Hints........................................................................
c.colors.hints.bg                               = colors['hint']
c.colors.hints.fg                               = colors['fg_sel']
c.colors.hints.match.fg                         = colors['fg']
# Keyhint......................................................................
c.colors.keyhint.bg                             = colors['bg_sel']
c.colors.keyhint.fg                             = colors['fg_sel']
c.colors.keyhint.suffix.fg                      = colors['special']
# Messages.....................................................................
c.colors.messages.error.bg                      = colors['bg']
c.colors.messages.error.fg                      = colors['error']
c.colors.messages.info.bg                       = colors['bg']
c.colors.messages.info.fg                       = colors['info']
c.colors.messages.warning.bg                    = colors['bg']
c.colors.messages.warning.fg                    = colors['warning']
# Prompts......................................................................
c.colors.prompts.bg                             = colors['bg_sel']
c.colors.prompts.border                         = colors['info']
c.colors.prompts.fg                             = colors['fg_sel']
c.colors.prompts.selected.bg                    = colors['bg']
# Status bar...................................................................
c.colors.statusbar.caret.bg                     = colors['bg_sel']
c.colors.statusbar.caret.fg                     = colors['fg_sel']
c.colors.statusbar.caret.selection.bg           = colors['bg_sel']
c.colors.statusbar.caret.selection.fg           = colors['fg_sel']
c.colors.statusbar.insert.bg                    = colors['bg_sel']
c.colors.statusbar.insert.fg                    = colors['fg_sel']
c.colors.statusbar.passthrough.bg               = colors['bg']
c.colors.statusbar.passthrough.fg               = colors['error']
c.colors.statusbar.progress.bg                  = colors['info']
c.colors.statusbar.url.error.fg                 = colors['error']
c.colors.statusbar.url.fg                       = colors['info']
c.colors.statusbar.url.hover.fg                 = colors['special']
c.colors.statusbar.url.success.http.fg          = colors['warning']
c.colors.statusbar.url.success.https.fg         = colors['info']
# Tabs.........................................................................
c.colors.tabs.bar.bg                            = colors['bg']
c.colors.tabs.even.bg                           = colors['bg']
c.colors.tabs.even.fg                           = colors['fg']
c.colors.tabs.indicator.error                   = colors['error']
c.colors.tabs.indicator.start                   = colors['info']
c.colors.tabs.indicator.stop                    = colors['fg_sel']
c.colors.tabs.odd.bg                            = colors['bg']
c.colors.tabs.odd.fg                            = colors['fg']
c.colors.tabs.pinned.even.bg                    = colors['bg']
c.colors.tabs.pinned.even.fg                    = colors['fg']
c.colors.tabs.pinned.odd.bg                     = colors['bg']
c.colors.tabs.pinned.odd.fg                     = colors['fg']
c.colors.tabs.pinned.selected.even.bg           = colors['bg_sel']
c.colors.tabs.pinned.selected.even.fg           = colors['fg_sel']
c.colors.tabs.pinned.selected.odd.bg            = colors['bg_sel']
c.colors.tabs.pinned.selected.odd.fg            = colors['fg_sel']
c.colors.tabs.selected.even.bg                  = colors['bg_sel']
c.colors.tabs.selected.even.fg                  = colors['fg_sel']
c.colors.tabs.selected.odd.bg                   = colors['bg_sel']
c.colors.tabs.selected.odd.fg                   = colors['fg_sel']
# Webpage......................................................................
c.colors.webpage.darkmode.enabled               = True


# Bindings
c.bindings.default  = {}
with open('.config/qutebrowser/keys.cfg', 'r') as keyfile:
    for line in keyfile.read().split("\n"):
        stripped = line.lstrip()
        if len(stripped) == 0 or stripped[0] == '#':
            continue
        if line[0] != ' ':
            mode = stripped
        else:
            config.bind(*line.split(maxsplit=1), mode=mode)

# URL Settings
# with url.pattern('*teams*'):
#   c.content.mute = False
#   c.content.ssl_strict = True
