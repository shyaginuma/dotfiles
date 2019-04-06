function fish_prompt
    set_color $fish_color_cwd
    echo -n (set_color blue)(basename $PWD)
    printf '%s' (__fish_git_prompt)
    set_color normal 
    echo -n ' >> '
end
