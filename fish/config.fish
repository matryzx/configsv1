if status is-interactive

end

function fish_prompt
    set -l last_status $status
    # Prompt status only if it's not 0
    set -l stat
    if test $last_status -ne 0
        set stat (set_color red)"[$last_status]"(set_color --reset)
    end

    echo (prompt_pwd) '> '
end

set fish_greeting ""

set -gx HYPRSHOT_DIR /home/doc/Pictures/screenshots/
set -gx XDG_PICTURES_DIR /home/doc/Pictures/
