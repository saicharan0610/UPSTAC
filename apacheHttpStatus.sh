installationCheck=$(sudo apt install apache2)
statusCheck=$(service apache2 status)
if [[ $installationCheck == *"apache2 is already the newest version"* ]]
then

        if [[ $statusCheck == *"(running)"* ]]
        then
                echo "It's running!"

        else
                echo "starting the service"
                service apache2 start
                echo "Service Started"
        fi
else
        sudo apt update
        sudo apt install apache2
        echo "Services Started"
fi
