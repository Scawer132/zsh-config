# ==========================================
# Powerlevel10k Tokyo Night
# Ubuntu + Nerd Font
# ==========================================


# ------------------------------
# Layout
# ------------------------------

typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  os_icon
  context
  dir
  vcs
  newline
  prompt_char
)

typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
  status
  command_execution_time
)


typeset -g POWERLEVEL9K_PROMPT_ADD_NEWLINE=true


# ------------------------------
# Instant prompt
# ------------------------------

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet


# ------------------------------
# Colors
# Tokyo Night palette
# ------------------------------

typeset -g POWERLEVEL9K_FOREGROUND='#c0caf5'


# ------------------------------
# OS
# ------------------------------

typeset -g POWERLEVEL9K_OS_ICON_FOREGROUND='#7aa2f7'
typeset -g POWERLEVEL9K_OS_ICON_BACKGROUND='#1a1b26'


# Ubuntu icon
typeset -g POWERLEVEL9K_OS_ICON_CONTENT_EXPANSION=''


# ------------------------------
# User
# ------------------------------

typeset -g POWERLEVEL9K_CONTEXT_FOREGROUND='#bb9af7'
typeset -g POWERLEVEL9K_CONTEXT_BACKGROUND='#1a1b26'

typeset -g POWERLEVEL9K_CONTEXT_TEMPLATE=' %n'


# ------------------------------
# Directory
# ------------------------------

typeset -g POWERLEVEL9K_DIR_FOREGROUND='#7dcfff'
typeset -g POWERLEVEL9K_DIR_BACKGROUND='#1a1b26'

typeset -g POWERLEVEL9K_DIR_HOME_FOREGROUND='#7dcfff'

typeset -g POWERLEVEL9K_DIR_SHORTEN_STRATEGY=truncate_to_unique

typeset -g POWERLEVEL9K_HOME_FOLDER_ABBREVIATION='~'


# ------------------------------
# Git
# ------------------------------

typeset -g POWERLEVEL9K_VCS_FOREGROUND='#c0caf5'

typeset -g POWERLEVEL9K_VCS_CLEAN_FOREGROUND='#9ece6a'
typeset -g POWERLEVEL9K_VCS_CLEAN_BACKGROUND='#1a1b26'


typeset -g POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='#e0af68'
typeset -g POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='#1a1b26'


typeset -g POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='#f7768e'
typeset -g POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='#1a1b26'


typeset -g POWERLEVEL9K_VCS_BRANCH_ICON=' '


# Git status

typeset -g POWERLEVEL9K_VCS_CONTENT_EXPANSION='${P9K_CONTENT}'


typeset -g POWERLEVEL9K_VCS_STATUS_SHOW=true

typeset -g POWERLEVEL9K_VCS_SHOW_SUBMODULE_DIRTY=true


# ahead / behind

typeset -g POWERLEVEL9K_VCS_OUTGOING_CHANGES_FOREGROUND='#7aa2f7'
typeset -g POWERLEVEL9K_VCS_INCOMING_CHANGES_FOREGROUND='#bb9af7'


# ------------------------------
# Status
# ------------------------------

typeset -g POWERLEVEL9K_STATUS_OK_FOREGROUND='#9ece6a'
typeset -g POWERLEVEL9K_STATUS_ERROR_FOREGROUND='#f7768e'

typeset -g POWERLEVEL9K_STATUS_OK_ICON='✓'
typeset -g POWERLEVEL9K_STATUS_ERROR_ICON='✘'


# ------------------------------
# Execution time
# ------------------------------

typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0

typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='#565f89'

typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_FORMAT=' %d'


# ------------------------------
# Prompt symbol
# ------------------------------

typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_VIINS_CONTENT_EXPANSION='❯'

typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_VIINS_CONTENT_EXPANSION='❯'


typeset -g POWERLEVEL9K_PROMPT_CHAR_FOREGROUND='#bb9af7'


# ------------------------------
# Separator
# ------------------------------

typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX='%F{#7aa2f7}╭─%f'

typeset -g POWERLEVEL9K_MULTILINE_NEWLINE_PROMPT_PREFIX='%F{#7aa2f7}│ %f'

typeset -g POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX='%F{#7aa2f7}╰─%f'


# ------------------------------
# Powerline shapes
# ------------------------------

typeset -g POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=''
typeset -g POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''
