module.exports = {
  config: {
    paneNavigation: {
	  hotkeys: {
		navigation: {
		  up: 'alt+up',
		  down: 'alt+down',
		  left: 'alt+left',
		  right: 'alt+right'
		},
		jump_prefix: 'alt',
		permutation_modifier: 'shift',
		maximize: 'alt+enter'
	  },
	  showIndicators: true,
	  indicatorPrefix: '^',
	  inactivePaneOpacity: 0.6
	},
    updateChannel: 'stable',
	fontSize: 12,
	fontFamily: '"Dank Mono", "Operator Mono", Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',
	fontWeight: 'normal',
	fontWeightBold: 'bold',
	cursorColor: 'rgba(248,28,229,0.8)',
	cursorAccentColor: '#000',
	cursorShape: 'BLOCK',
	cursorBlink: false,
	foregroundColor: '#fff',
	backgroundColor: '#000',
	selectionColor: 'rgba(248,28,229,0.3)',
	borderColor: '#333',
	css: '',
	termCSS: '',
	showHamburgerMenu: true,
	showWindowControls: '',
	padding: '12px 14px',
	colors: {
      black: '#000000',
      red: '#C51E14',
      green: '#1DC121',
      yellow: '#C7C329',
      blue: '#0A2FC4',
      magenta: '#C839C5',
      cyan: '#20C5C6',
      white: '#C7C7C7',
      lightBlack: '#686868',
      lightRed: '#FD6F6B',
      lightGreen: '#67F86F',
      lightYellow: '#FFFA72',
      lightBlue: '#6A76FB',
      lightMagenta: '#FD7CFC',
      lightCyan: '#68FDFE',
      lightWhite: '#FFFFFF',
    },
    shell: 'C:\\WINDOWS\\System32\\WindowsPowerShell\\v1.0\\powershell.exe',
    shellArgs: ['-noexit', '-command', 'Set-Location C:\\git'],
    env: {},
    bell: 'SOUND',
    copyOnSelect: true,
    defaultSSHApp: true,
    // quickEdit: true,
	summon: {
      hotkey: 'Alt+Esc'
    }
  },
  plugins: ['nord-hyper', 'hyperterm-summon', "hyper-pane"],
  localPlugins: [],

  keymaps: {
    // 'window:devtools': 'cmd+alt+o',
  },
};
