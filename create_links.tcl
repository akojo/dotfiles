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
