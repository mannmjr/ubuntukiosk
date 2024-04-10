# Not-particularly-secure kiosk using Ubuntu

## Desktop configuration

### Turn screen timeout off
TODO

### Install required packages
`sudo apt install -y chromium-browser`
`sudo apt remove -y firefox`

### Startup applications
Add `chromium --start-maximized --kiosk url1 ul2 ...` to Startup Applications.

### Remap Meta key to act as Ctrl+Tab
run keyd setup script
