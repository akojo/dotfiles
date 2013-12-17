#!/usr/bin/env tclsh

set bindir [file join $env(HOME) bin]

proc install_link {file target} {
    global env

    set f [file normalize $file]
    set t [file normalize [file join $env(HOME) $target]]

    if [file exists $t] {
        file delete -force $t
    }
    file link $t $f
}

proc bin_install {} {
    foreach file [glob -nocomplain bin/*] {
        install_link $file $file
    }
}

proc rc_install {} {
    global tcl_platform

    foreach f [glob -nocomplain _*] {
        if {$tcl_platform(platform) eq "unix"} {
            set target [string map {_ .} $f]
        } else {
            if [string match _*vim* $f] {
                set target $f
            } else {
                set target [string map {_ .} $f]
            }
        }
        install_link $f $target
    }
}

if ![file exists $bindir] {
    file mkdir $bindir
}

rc_install
bin_install

# Add a personal touch to the .profile file
set profile [file join $env(HOME) ".profile"]
set rcfile bin/shrc

if {[file exists $profile] && [file exists $rcfile]} {
    set header "# Do not delete: Added by create_links.tcl"
    set fd [open $profile]
    set contents [read $fd]
    if {![regexp "(^|\n)$header" $contents]} {
        set tmpfile "${profile}.tmp"
        set include [list $header \
            {if [ -f ~/bin/shrc ]; then}\
            {    source ~/bin/shrc}\
            {fi}\
            {}\
            $contents]

        set fd [open $tmpfile w]
        puts $fd [join $include "\n"]

        file rename $profile "$profile.bak"
        file rename $tmpfile $profile
        file delete "$profile.bak"
    }
}
