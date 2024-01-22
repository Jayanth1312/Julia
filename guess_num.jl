function guessing_game()
    secret_num=rand(1:100)
    guess=0
    attempts=0
    while guess != secret_num
        guess=parse(Int,readline())
        attempts+=1
        if guess<secret_num
            println("guess higher")
        elseif guess>secret_num
            println("guess lower")
        else
            println("Congrats!! you guessed the number $secret_num in $attempts attempts")
        end
    end
end
guessing_game()
