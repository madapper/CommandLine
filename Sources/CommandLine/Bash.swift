//
//  Bash.swift
//  CommandLine
//
//  Created by Paul Napier on 26/11/16.
//
//

import Foundation

public protocol Command {
    var launchPath: String { get }
    var rawValue: String { get }
    var description: String { get }
}

public enum Bash: String {
    case alias_ = "alias"
    case apropos_ = "apropos"
    case aptget_ = "apt-get"
    case aptitude_ = "aptitude"
    case aspell_ = "aspell"
    case awk_ = "awk"
    case basename_ = "basename"
    case bash_ = "bash"
    case bc_ = "bc"
    case bg_ = "bg"
    case bind_ = "bind"
    case break_ = "break"
    case builtin_ = "builtin"
    case bzip2_ = "bzip2"
    case cal_ = "cal"
    case case_ = "case"
    case cat_ = "cat"
    case cd_ = "cd"
    case cfdisk_ = "cfdisk"
    case chgrp_ = "chgrp"
    case chmod_ = "chmod"
    case chown_ = "chown"
    case chroot_ = "chroot"
    case chkconfig_ = "chkconfig"
    case cksum_ = "cksum"
    case clear_ = "clear"
    case cmp_ = "cmp"
    case comm_ = "comm"
    case command_ = "command"
    case continue_ = "continue"
    case cp_ = "cp"
    case cron_ = "cron"
    case crontab_ = "crontab"
    case csplit_ = "csplit"
    case curl_ = "curl"
    case cut_ = "cut"
    case date_ = "date"
    case dc_ = "dc"
    case dd_ = "dd"
    case ddrescue_ = "ddrescue"
    case declare_ = "declare"
    case df_ = "df"
    case diff_ = "diff"
    case diff3_ = "diff3"
    case dig_ = "dig"
    case dir_ = "dir"
    case dircolors_ = "dircolors"
    case dirname_ = "dirname"
    case dirs_ = "dirs"
    case dmesg_ = "dmesg"
    case du_ = "du"
    case echo_ = "echo"
    case egrep_ = "egrep"
    case eject_ = "eject"
    case enable_ = "enable"
    case env_ = "env"
    case ethtool_ = "ethtool"
    case eval_ = "eval"
    case exec_ = "exec"
    case exit_ = "exit"
    case expect_ = "expect"
    case expand_ = "expand"
    case export_ = "export"
    case expr_ = "expr"
    case FALSE_ = "FALSE"
    case fdformat_ = "fdformat"
    case fdisk_ = "fdisk"
    case fg_ = "fg"
    case fgrep_ = "fgrep"
    case file_ = "file"
    case find_ = "find"
    case fmt_ = "fmt"
    case fold_ = "fold"
    case for_ = "for"
    case format_ = "format"
    case free_ = "free"
    case fsck_ = "fsck"
    case ftp_ = "ftp"
    case function_ = "function"
    case fuser_ = "fuser"
    case gawk_ = "gawk"
    case getopts_ = "getopts"
    case grep_ = "grep"
    case groupadd_ = "groupadd"
    case groupdel_ = "groupdel"
    case groupmod_ = "groupmod"
    case groups_ = "groups"
    case gzip_ = "gzip"
    case hash_ = "hash"
    case head_ = "head"
    case help_ = "help"
    case history_ = "history"
    case hostname_ = "hostname"
    case htop_ = "htop"
    case iconv_ = "iconv"
    case id_ = "id"
    case if_ = "if"
    case ifconfig_ = "ifconfig"
    case ifdown_ = "ifdown"
    case ifup_ = "ifup"
    case import_ = "import"
    case install_ = "install"
    case ip_ = "ip"
    case jobs_ = "jobs"
    case join_ = "join"
    case kill_ = "kill"
    case killall_ = "killall"
    case less_ = "less"
    case let_ = "let"
    case link_ = "link"
    case ln_ = "ln"
    case local_ = "local"
    case locate_ = "locate"
    case logname_ = "logname"
    case logout_ = "logout"
    case look_ = "look"
    case lpc_ = "lpc"
    case lpr_ = "lpr"
    case lprint_ = "lprint"
    case lprintd_ = "lprintd"
    case lprintq_ = "lprintq"
    case lprm_ = "lprm"
    case lsblk_ = "lsblk"
    case ls_ = "ls"
    case lsof_ = "lsof"
    case make_ = "make"
    case man_ = "man"
    case mkdir_ = "mkdir"
    case mkfifo_ = "mkfifo"
    case mkisofs_ = "mkisofs"
    case mknod_ = "mknod"
    case more_ = "more"
    case most_ = "most"
    case mount_ = "mount"
    case mtools_ = "mtools"
    case mtr_ = "mtr"
    case mv_ = "mv"
    case mmv_ = "mmv"
    case nc_ = "nc"
    case netstat_ = "netstat"
    case nice_ = "nice"
    case nl_ = "nl"
    case nohup_ = "nohup"
    case notifyse_ = "notify-se"
    case nslookup_ = "nslookup"
    case open_ = "open"
    case op_ = "op"
    case passwd_ = "passwd"
    case paste_ = "paste"
    case pathchk_ = "pathchk"
    case ping_ = "ping"
    case pgrep_ = "pgrep"
    case pkill_ = "pkill"
    case popd_ = "popd"
    case pr_ = "pr"
    case printcap_ = "printcap"
    case printenv_ = "printenv"
    case printf_ = "printf"
    case ps_ = "ps"
    case pushd_ = "pushd"
    case pv_ = "pv"
    case pwd_ = "pwd"
    case quota_ = "quota"
    case quotachec_ = "quotachec"
    case ram_ = "ram"
    case rar_ = "rar"
    case rcp_ = "rcp"
    case read_ = "read"
    case readarray_ = "readarray"
    case readonly_ = "readonly"
    case reboot_ = "reboot"
    case rename_ = "rename"
    case renice_ = "renice"
    case remsync_ = "remsync"
    case return_ = "return"
    case rev_ = "rev"
    case rm_ = "rm"
    case rmdir_ = "rmdir"
    case rsync_ = "rsync"
    case screen_ = "screen"
    case scp_ = "scp"
    case sdiff_ = "sdiff"
    case sed_ = "sed"
    case select_ = "select"
    case seq_ = "seq"
    case set_ = "set"
    case sftp_ = "sftp"
    case shift_ = "shift"
    case shopt_ = "shopt"
    case shutdown_ = "shutdown"
    case sleep_ = "sleep"
    case slocate_ = "slocate"
    case sort_ = "sort"
    case source_ = "source"
    case split_ = "split"
    case ss_ = "ss"
    case ssh_ = "ssh"
    case stat_ = "stat"
    case strace_ = "strace"
    case su_ = "su"
    case sudo_ = "sudo"
    case sum_ = "sum"
    case suspend_ = "suspend"
    case sync_ = "sync"
    case tail_ = "tail"
    case tar_ = "tar"
    case tee_ = "tee"
    case test_ = "test"
    case time_ = "time"
    case timeout_ = "timeout"
    case times_ = "times"
    case touch_ = "touch"
    case top_ = "top"
    case tput_ = "tput"
    case tracerout_ = "tracerout"
    case trap_ = "trap"
    case tr_ = "tr"
    case TRUE_ = "TRUE"
    case tsort_ = "tsort"
    case tty_ = "tty"
    case type_ = "type"
    case ulimit_ = "ulimit"
    case umask_ = "umask"
    case umount_ = "umount"
    case unalias_ = "unalias"
    case uname_ = "uname"
    case unexpand_ = "unexpand"
    case uniq_ = "uniq"
    case units_ = "units"
    case unrar_ = "unrar"
    case unset_ = "unset"
    case unshar_ = "unshar"
    case until_ = "until"
    case uptime_ = "uptime"
    case useradd_ = "useradd"
    case userdel_ = "userdel"
    case usermod_ = "usermod"
    case users_ = "users"
    case uuencode_ = "uuencode"
    case uudecode_ = "uudecode"
    case v_ = "v"
    case vdir_ = "vdir"
    case vi_ = "vi"
    case vmstat_ = "vmstat"
    case wait_ = "wait"
    case watch_ = "watch"
    case wc_ = "wc"
    case whereis_ = "whereis"
    case which_ = "which"
    case while_ = "while"
    case who_ = "who"
    case whoami_ = "whoami"
    case wget_ = "wget"
    case write_ = "write"
    case xargs_ = "xargs"
    case xdgopen_ = "xdg-open"
    case xz_ = "xz"
    case yes_ = "yes"
    case zip_ = "zip"
}

extension Bash: Command {
    var launchPath: String {
        return "bash"
    }
}

extension Bash: CustomStringConvertible {
    public var description: String {
        switch self {
        case .alias_: return "alias: Create an alias •"
        case .apropos_: return "apropos: Search Help manual pages (man -k)"
        case .aptget_: return "apt-get: Search for and install software packages (Debian/Ubuntu)"
        case .aptitude_: return "aptitude: Search for and install software packages (Debian/Ubuntu)"
        case .aspell_: return "aspell: Spell Checker"
        case .awk_: return "awk: Find and Replace text, database sort/validate/index"
        case .basename_: return "basename: Strip directory and suffix from filenames"
        case .bash_: return "bash: GNU Bourne-Again SHell"
        case .bc_: return "bc: Arbitrary precision calculator language"
        case .bg_: return "bg: Send to background"
        case .bind_: return "bind: Set or display readline key and function bindings •"
        case .break_: return "break: Exit from a loop •"
        case .builtin_: return "builtin: Run a shell builtin"
        case .bzip2_: return "bzip2: Compress or decompress named file(s)"
        case .cal_: return "cal: Display a calendar"
        case .case_: return "case: Conditionally perform a command"
        case .cat_: return "cat: Concatenate and print (display) the content of files"
        case .cd_: return "cd: Change Directory"
        case .cfdisk_: return "cfdisk: Partition table manipulator for Linux"
        case .chgrp_: return "chgrp: Change group ownership"
        case .chmod_: return "chmod: Change access permissions"
        case .chown_: return "chown: Change file owner and group"
        case .chroot_: return "chroot: Run a command with a different root directory"
        case .chkconfig_: return "chkconfig: System services (runlevel)"
        case .cksum_: return "cksum: Print CRC checksum and byte counts"
        case .clear_: return "clear: Clear terminal screen"
        case .cmp_: return "cmp: Compare two files"
        case .comm_: return "comm: Compare two sorted files line by line"
        case .command_: return "command: Run a command - ignoring shell functions •"
        case .continue_: return "continue: Resume the next iteration of a loop •"
        case .cp_: return "cp: Copy one or more files to another location"
        case .cron_: return "cron: Daemon to execute scheduled commands"
        case .crontab_: return "crontab: Schedule a command to run at a later time"
        case .csplit_: return "csplit: Split a file into context-determined pieces"
        case .curl_: return "curl: Transfer data  from or to a server"
        case .cut_: return "cut: Divide a file into several parts"
        case .date_: return "date: Display or change the date & time"
        case .dc_: return "dc: Desk Calculator"
        case .dd_: return "dd: Convert and copy a file, write disk headers, boot records"
        case .ddrescue_: return "ddrescue: Data recovery tool"
        case .declare_: return "declare: Declare variables and give them attributes •"
        case .df_: return "df: Display free disk space"
        case .diff_: return "diff: Display the differences between two files"
        case .diff3_: return "diff3: Show differences among three files"
        case .dig_: return "dig: DNS lookup"
        case .dir_: return "dir: Briefly list directory contents"
        case .dircolors_: return "dircolors: Colour setup for `ls'"
        case .dirname_: return "dirname: Convert a full pathname to just a path"
        case .dirs_: return "dirs: Display list of remembered directories"
        case .dmesg_: return "dmesg: Print kernel & driver messages"
        case .du_: return "du: Estimate file space usage"
        case .echo_: return "echo: Display message on screen •"
        case .egrep_: return "egrep: Search file(s) for lines that match an extended expression"
        case .eject_: return "eject: Eject removable media"
        case .enable_: return "enable: Enable and disable builtin shell commands •"
        case .env_: return "env: Environment variables"
        case .ethtool_: return "ethtool: Ethernet card settings"
        case .eval_: return "eval: Evaluate several commands/arguments"
        case .exec_: return "exec: Execute a command"
        case .exit_: return "exit: Exit the shell"
        case .expect_: return "expect: Automate arbitrary applications accessed over a terminal"
        case .expand_: return "expand: Convert tabs to spaces"
        case .export_: return "export: Set an environment variable"
        case .expr_: return "expr: Evaluate expressions"
        case .FALSE_: return "FALSE: Do nothing, unsuccessfully"
        case .fdformat_: return "fdformat: Low-level format a floppy disk"
        case .fdisk_: return "fdisk: Partition table manipulator for Linux"
        case .fg_: return "fg: Send job to foreground"
        case .fgrep_: return "fgrep: Search file(s) for lines that match a fixed string"
        case .file_: return "file: Determine file type"
        case .find_: return "find: Search for files that meet a desired criteria"
        case .fmt_: return "fmt: Reformat paragraph text"
        case .fold_: return "fold: Wrap text to fit a specified width."
        case .for_: return "for: Expand words, and execute commands"
        case .format_: return "format: Format disks or tapes"
        case .free_: return "free: Display memory usage"
        case .fsck_: return "fsck: File system consistency check and repair"
        case .ftp_: return "ftp: File Transfer Protocol"
        case .function_: return "function: Define Function Macros"
        case .fuser_: return "fuser: Identify/kill the process that is accessing a file"
        case .gawk_: return "gawk: Find and Replace text within file(s)"
        case .getopts_: return "getopts: Parse positional parameters"
        case .grep_: return "grep: Search file(s) for lines that match a given pattern"
        case .groupadd_: return "groupadd: Add a user security group"
        case .groupdel_: return "groupdel: Delete a group"
        case .groupmod_: return "groupmod: Modify a group"
        case .groups_: return "groups: Print group names a user is in"
        case .gzip_: return "gzip: Compress or decompress named file(s)"
        case .hash_: return "hash: Remember the full pathname of a name argument"
        case .head_: return "head: Output the first part of file(s)"
        case .help_: return "help: Display help for a built-in command •"
        case .history_: return "history: Command History"
        case .hostname_: return "hostname: Print or set system name"
        case .htop_: return "htop: Interactive process viewer"
        case .iconv_: return "iconv: Convert the character set of a file"
        case .id_: return "id: Print user and group id's"
        case .if_: return "if: Conditionally perform a command"
        case .ifconfig_: return "ifconfig: Configure a network interface"
        case .ifdown_: return "ifdown: Stop a network interface"
        case .ifup_: return "ifup: Start a network interface up"
        case .import_: return "import: Capture an X server screen and save the image to file"
        case .install_: return "install: Copy files and set attributes"
        case .ip_: return "ip: Routing, devices and tunnels"
        case .jobs_: return "jobs: List active jobs •"
        case .join_: return "join: Join lines on a common field"
        case .kill_: return "kill: Kill a process by specifying its PID"
        case .killall_: return "killall: Kill processes by name"
        case .less_: return "less: Display output one screen at a time"
        case .let_: return "let: Perform arithmetic on shell variables •"
        case .link_: return "link: Create a link to a file"
        case .ln_: return "ln: Create a symbolic link to a file"
        case .local_: return "local: Create a function variable •"
        case .locate_: return "locate: Find files"
        case .logname_: return "logname: Print current login name"
        case .logout_: return "logout: Exit a login shell •"
        case .look_: return "look: Display lines beginning with a given string"
        case .lpc_: return "lpc: Line printer control program"
        case .lpr_: return "lpr: Off line print"
        case .lprint_: return "lprint: Print a file"
        case .lprintd_: return "lprintd: Abort a print job"
        case .lprintq_: return "lprintq: List the print queue"
        case .lprm_: return "lprm: Remove jobs from the print queue"
        case .lsblk_: return "lsblk: List block devices"
        case .ls_: return "ls: List information about file(s)"
        case .lsof_: return "lsof: List open files"
        case .make_: return "make: Recompile a group of programs"
        case .man_: return "man: Help manual"
        case .mkdir_: return "mkdir: Create new folder(s)"
        case .mkfifo_: return "mkfifo: Make FIFOs (named pipes)"
        case .mkisofs_: return "mkisofs: Create an hybrid ISO9660/JOLIET/HFS filesystem"
        case .mknod_: return "mknod: Make block or character special files"
        case .more_: return "more: Display output one screen at a time"
        case .most_: return "most: Browse or page through a text file"
        case .mount_: return "mount: Mount a file system"
        case .mtools_: return "mtools: Manipulate MS-DOS files"
        case .mtr_: return "mtr: Network diagnostics (traceroute/ping)"
        case .mv_: return "mv: Move or rename files or directories"
        case .mmv_: return "mmv: Mass Move and rename (files)"
        case .nc_: return "nc: Netcat, read and write data across networks"
        case .netstat_: return "netstat: Networking information"
        case .nice_: return "nice: Set the priority of a command or job"
        case .nl_: return "nl: Number lines and write files"
        case .nohup_: return "nohup: Run a command immune to hangups"
        case .notifyse_: return "notify-se: nd  Send desktop notifications"
        case .nslookup_: return "nslookup: Query Internet name servers interactively"
        case .open_: return "open: Open a file in its default application"
        case .op_: return "op: Operator access"
        case .passwd_: return "passwd: Modify a user password"
        case .paste_: return "paste: Merge lines of files"
        case .pathchk_: return "pathchk: Check file name portability"
        case .ping_: return "ping: Test a network connection"
        case .pgrep_: return "pgrep: List processes by name"
        case .pkill_: return "pkill: Kill processes by name"
        case .popd_: return "popd: Restore the previous value of the current directory"
        case .pr_: return "pr: Prepare files for printing"
        case .printcap_: return "printcap: Printer capability database"
        case .printenv_: return "printenv: Print environment variables"
        case .printf_: return "printf: Format and print data •"
        case .ps_: return "ps: Process status"
        case .pushd_: return "pushd: Save and then change the current directory"
        case .pv_: return "pv: Monitor the progress of data through a pipe"
        case .pwd_: return "pwd: Print Working Directory"
        case .quota_: return "quota: Display disk usage and limits"
        case .quotachec_: return "quotachec: k Scan a file system for disk usage"
        case .ram_: return "ram: ram disk device"
        case .rar_: return "rar: Archive files with compression"
        case .rcp_: return "rcp: Copy files between two machines"
        case .read_: return "read: Read a line from standard input •"
        case .readarray_: return "readarray: Read from stdin into an array variable •"
        case .readonly_: return "readonly: Mark variables/functions as readonly"
        case .reboot_: return "reboot: Reboot the system"
        case .rename_: return "rename: Rename files"
        case .renice_: return "renice: Alter priority of running processes"
        case .remsync_: return "remsync: Synchronize remote files via email"
        case .return_: return "return: Exit a shell function"
        case .rev_: return "rev: Reverse lines of a file"
        case .rm_: return "rm: Remove files"
        case .rmdir_: return "rmdir: Remove folder(s)"
        case .rsync_: return "rsync: Remote file copy (Synchronize file trees)"
        case .screen_: return "screen: Multiplex terminal, run remote shells via ssh"
        case .scp_: return "scp: Secure copy (remote file copy)"
        case .sdiff_: return "sdiff: Merge two files interactively"
        case .sed_: return "sed: Stream Editor"
        case .select_: return "select: Accept keyboard input"
        case .seq_: return "seq: Print numeric sequences"
        case .set_: return "set: Manipulate shell variables and functions"
        case .sftp_: return "sftp: Secure File Transfer Program"
        case .shift_: return "shift: Shift positional parameters"
        case .shopt_: return "shopt: Shell Options"
        case .shutdown_: return "shutdown: Shutdown or restart linux"
        case .sleep_: return "sleep: Delay for a specified time"
        case .slocate_: return "slocate: Find files"
        case .sort_: return "sort: Sort text files"
        case .source_: return "source: Run commands from a file '.'"
        case .split_: return "split: Split a file into fixed-size pieces"
        case .ss_: return "ss: Socket Statistics"
        case .ssh_: return "ssh: Secure Shell client (remote login program)"
        case .stat_: return "stat: Display file or file system status"
        case .strace_: return "strace: Trace system calls and signals"
        case .su_: return "su: Substitute user identity"
        case .sudo_: return "sudo: Execute a command as another user"
        case .sum_: return "sum: Print a checksum for a file"
        case .suspend_: return "suspend: Suspend execution of this shell •"
        case .sync_: return "sync: Synchronize data on disk with memory"
        case .tail_: return "tail: Output the last part of file"
        case .tar_: return "tar: Store, list or extract files in an archive"
        case .tee_: return "tee: Redirect output to multiple files"
        case .test_: return "test: Evaluate a conditional expression"
        case .time_: return "time: Measure Program running time"
        case .timeout_: return "timeout: Run a command with a time limit"
        case .times_: return "times: User and system times"
        case .touch_: return "touch: Change file timestamps"
        case .top_: return "top: List processes running on the system"
        case .tput_: return "tput: Set terminal-dependent capabilities, color, position"
        case .tracerout_: return "tracerout: e Trace Route to Host"
        case .trap_: return "trap: Run a command when a signal is set(bourne)"
        case .tr_: return "tr: Translate, squeeze, and/or delete characters"
        case .TRUE_: return "TRUE: Do nothing, successfully"
        case .tsort_: return "tsort: Topological sort"
        case .tty_: return "tty: Print filename of terminal on stdin"
        case .type_: return "type: Describe a command •"
        case .ulimit_: return "ulimit: Limit user resources •"
        case .umask_: return "umask: Users file creation mask"
        case .umount_: return "umount: Unmount a device"
        case .unalias_: return "unalias: Remove an alias •"
        case .uname_: return "uname: Print system information"
        case .unexpand_: return "unexpand: Convert spaces to tabs"
        case .uniq_: return "uniq: Uniquify files"
        case .units_: return "units: Convert units from one scale to another"
        case .unrar_: return "unrar: Extract files from a rar archive"
        case .unset_: return "unset: Remove variable or function names"
        case .unshar_: return "unshar: Unpack shell archive scripts"
        case .until_: return "until: Execute commands (until error)"
        case .uptime_: return "uptime: Show uptime"
        case .useradd_: return "useradd: Create new user account"
        case .userdel_: return "userdel: Delete a user account"
        case .usermod_: return "usermod: Modify user account"
        case .users_: return "users: List users currently logged in"
        case .uuencode_: return "uuencode: Encode a binary file"
        case .uudecode_: return "uudecode: Decode a file created by uuencode"
        case .v_: return "v: Verbosely list directory contents (`ls -l -b')"
        case .vdir_: return "vdir: Verbosely list directory contents (`ls -l -b')"
        case .vi_: return "vi: Text Editor"
        case .vmstat_: return "vmstat: Report virtual memory statistics"
        case .wait_: return "wait: Wait for a process to complete •"
        case .watch_: return "watch: Execute/display a program periodically"
        case .wc_: return "wc: Print byte, word, and line counts"
        case .whereis_: return "whereis: Search the user's $path, man pages and source files for a program"
        case .which_: return "which: Search the user's $path for a program file"
        case .while_: return "while: Execute commands"
        case .who_: return "who: Print all usernames currently logged in"
        case .whoami_: return "whoami: Print the current user id and name (`id -un')"
        case .wget_: return "wget: Retrieve web pages or files via HTTP, HTTPS or FTP"
        case .write_: return "write: Send a message to another user"
        case .xargs_: return "xargs: Execute utility, passing constructed argument list(s)"
        case .xdgopen_: return "xdg-open: Open a file or URL in the user's preferred application."
        case .xz_: return "xz: Compress or decompress .xz and .lzma files"
        case .yes_: return "yes: Print a string until interrupted"
        case .zip_: return "zip: Package and compress (archive) files."
        }
    }
}
