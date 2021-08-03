# ls/open aliases; set ls colors
if [ (uname) = "Darwin" ]
    set -gx LSCOLORS Dxfxcxdxbxegedabagacad
    function ls; command ls -FGh $argv; end
else
    function ls; command ls -Fh --color=auto $argv; end
end
