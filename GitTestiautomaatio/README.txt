To get all the files from git 
1. Open the terminal or command prompt on your computer.
2. Navigate to the directory where you want to clone the repository using the cd command.
3. git clone https://github.com/Jughaz/TalenomProject_Juhani.git

To run all tests on CMD write the filepath and then " robot . "
To run tests on CMD write the filepath and then " robot Testcases\LoginTest.robot "
To run high priority or any other test with a different tag write " robot --include=priority:high Testcases\LoginTest.robot "
To run with multiple different tags write for example " robot -i priority:high -i priority:low Testcases\LoginTest.robot "
To run test with highest priority write " robot --include=priority:high . "

Käyttäjätunnus jenkins - TalenomTester - Testiautomaatio1234
run jenkins server file " -jar jenkins.war "