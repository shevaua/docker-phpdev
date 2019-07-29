# IMAGE VERSION
version=1.0.5

# UBUNTU IMAGE TAG
ubuntutag=shevaua/ubuntu

# PHPDEV IMAGE TAG
devtag=shevaua/phpdev

ynQuestion=
ynAnswer="y"
function askYN() {
    while true; do
        read -p "$ynQuestion [y|n]?: " ynAnswer
        if [ $ynAnswer = "y" ] || [ $ynAnswer = "n" ]
        then
            break
        fi
    done
}
