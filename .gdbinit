# Import gdb dashboard
# See: https://github.com/cyrus-and/gdb-dashboard
source ~/gdb-dashboard/.gdbinit

# General settings
set history save on
set history size 1000
set history filename ~/.gdb_history
set print pretty on

# xxd
define xxd
  dump binary memory /tmp/dump.bin $arg0 $arg0+$arg1
  shell xxd /tmp/dump.bin
end
document xxd
  Run xxd on memory region.
  Usage: xxd addr size
end
