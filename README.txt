To get all the files from git 
1. Open the terminal or command prompt on your computer.
2. Navigate to the directory where you want to clone the repository using the cd command.
3. git clone https://github.com/Jughaz/TalenomProject_Juhani.git

download the newest version of python in https://www.python.org/
Remeber to check the "Add python to environment variables" checkbox when installing python
Just in case it wasn't added correctly to the environment variables do the following ->
Search -> Edit environment variables for your account -> add the Python PATH to system variables(järjestelmämuuttujat)
this is the usual path to the python folder C:\Users\juhan\AppData\Local\Programs\Python\Python311
also add Scripts folder to the system variables C:\Users\juhan\AppData\Local\Programs\Python\Python311\Scripts
Go to command line and search python --version and pip --version. Both should be found at this point
Next install Selenium, Robotframework and robotframework-seleniumlibrary with install command -> install Selenium etc.
check that these were correctly downloaded by writing - pip list


To run all tests on command line write the filepath and then " robot . "
To run tests on command line write the filepath and then " robot Testcases\LoginTest.robot "
To run high priority or any other test with a different tag write " robot --include=priority:high Testcases\LoginTest.robot "
To run with multiple different tags write for example " robot -i priority:high -i priority:low Testcases\LoginTest.robot "
To run test with highest priority write " robot --include=priority:high . "

To run tests even easier write to the command line " run.bat " or just open the file run.bat directly

This is optional if there is extra time to check it out
Check running tests in a Jenkins server
Käyttäjätunnus jenkins - TalenomTester - testiautomaatio1234