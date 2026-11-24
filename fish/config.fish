if status is-interactive
    # Commands to run in interactive sessions can go here
end
function fish_prompt

    set_color -o red

    echo -n '['

    set_color yellow

    echo -n (whoami)

    set_color green

    echo -n '@'

    set_color blue

    echo -n (hostname -s)

    set_color red

    echo -n '] '
 
    if test -d .git -o -d ../.git -o -d ../../.git

        set_color magenta

        echo -n "(" (command git rev-parse --abbrev-ref HEAD 2>/dev/null) ") "

    end
 
    set_color cyan

    echo -n (prompt_pwd)
 
    set_color normal

    
    set_color normal
    echo -n '$ '
end

