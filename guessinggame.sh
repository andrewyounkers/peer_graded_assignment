function again {
    echo "guess again"
    read response
}
count=10
echo "Guess how many files are in the current directory"
read guess
    if [[ $guess -eq 3 ]]
    then  
        echo "congratulations your guess was correct"
    elif [[ $guess -gt 3 ]]
    then
        echo "your guess is too high"
        while [[ count -gt 1 ]]
        do 
            again
            if [[ $response -eq 3 ]]
            then  
                let count=0
                echo "congratulations your guess was correct"
            elif [[ $response -gt 3 ]]
            then
                echo "your guess is too high"
            else
                echo "your guess is too low"
            fi 
        done
    else
        echo "your guess is too low"
        while [[ count -gt 1 ]]
        do 
            again
            if [[ $response -eq 3 ]]
            then  
                let count=0
                echo "congratulations your guess was correct"
            elif [[ $response -gt 3 ]]
            then
                echo "your guess is too high"
            else
                echo "your guess is too low"
            fi 
        done
    fi