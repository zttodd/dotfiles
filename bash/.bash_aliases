# Shortcut for navigating up a directory
alias ..='cd ..'

# Make bash a little more generous with typos
alias cd..='cd ..'

# Clear terminal
alias cls='clear'

# Scrape images with wget
# https://davidwalsh.name/scrape-images-wget
# $1 = url
# Example: scrapeimages https://davidwalsh.name/
# (Original source of snippet: https://davidwalsh.name/alias-bash)
scrapeimages() {
    wget -nd -H -p -A jpg,jpeg,png,gif -e robots=off $1
}