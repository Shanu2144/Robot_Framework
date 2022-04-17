<h1 align="center"><img src="https://i.giphy.com/media/zbzuZgxt23h8ywu7Bm/giphy.webp" height=35> Automation <img src= "https://i.giphy.com/media/3TdV1b87lcbv3SDoa3/giphy.webp" height =35> </h1>
<h1 align="center">  :robot: Robot Framework for Mobile UI Automation :robot: </h1>

   :sassy_man: ***Introduction:-***
   - Robot Framework is a test automation framework that makes it easy for QA teams to manage acceptance testing and acceptance test-driven development (ATDD).
   - It has simple plain text syntax and it can be extended easily with libraries implemented using Python or Java.
  
   - See <a href="https://robotframework.org/"><img alt="GitHub" src="https://img.shields.io/badge/ROBOT-Framework-red"></a>   for entering into homepage and some more details.

**Who is this repository for?**
 - This repository is for newbies to Robot Framework interested in automating the mobile UI.
##  🛠️ Installation

**👉Install python with PIP:-**
 - Click on Logo to download Python for your operating system.<a href="https://www.python.org/downloads/" target="_blank">
    <img alt="Python" src="https://img.shields.io/badge/Python%20-%2314354C.svg?style=plastic&logo=python&logoColor=white">
  </a>
                       
 - You can click on ‘Install Now' to install the default package. It comes with pip, IDLE, and documentation.
 - Select option ‘Add Python <version> to PATH that will automatically update the path of Python in environment variables.
 - After installation check if Python and pip are correctly installed open the command prompt, and run the below command.
```
    python --version
``` 
``` 
    pip --version 
```
    
 - If in condition the path is not set then go to environment variables then click on PATH in user & system variable both & add
                    ```D:\Python\``` , ``` D:\Python\Scripts\``` , ``` D:\Python\Lib\site-packages\robot```, ```D:\Python\Tools ```
                    & save it.

**👉Install Java jdk:-**
 - Search java jdk,<a href="https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html" target="_blank"> 
    <img alt="Java" src="https://img.shields.io/badge/Java-%23007396.svg?style=plastic&logo=java&logoColor=white">
  </a>
	
 - Install it & add to environment Variable, 
   - Add new System variable with name JAVA\_HOME & 
                 Paste                  
                 `
                 C:\Program Files\Java\jdk1.8.0\_27 
                 ` ,
                 & 
                 `
                 C:\Program Files\Java\jdk1.8.0\_271\bin
                 ` .
 - After installation check if java is correctly installed open the command prompt, and run the below command.
```
    java -version
```

**👉Install node js:-**
 - Search node js,
 - Click on PATH in system variable & add
   > `C:\Program Files\nodejs`
	
   > `C:\Program Files\nodejs\node\_modules`
	
   > `C:\Program Files\nodejs\node\_modules\npm`
	
 - After installation check if node js is correctly installed open the command prompt, and run the below command.
```
	node -v
```

**👉Install appium:-**
 - In cmd type 
``` 
npm  install -g appium
```
    
 - After installation check if appium is correctly installed open the command prompt, and run the below command.
```
    appium --version
```
    
 - To check whether installation is done proper or not open the command prompt, and run the below command.
```
    npm -g appium doctor
```
            
**👉Install appium libraries:-**
 - Install appium library for automation
 - Type in cmd 
```
    pip install robotframework appium library
```

**👉Install appium standalone application:-**
 - Download standalone application appium  <a href="https://github.com/appium/appium-desktop/releases/tag/v1.20.2"><img alt="GitHub" src="https://img.shields.io/badge/github-%23181717.svg?style=plastic&logo=github&logoColor=white"></a>
	
	OR DOWNLOAD THE LATEST ONE <a href="https://github.com/appium/appium-desktop/releases/latest"><img alt="GitHub" src="https://img.shields.io/badge/github-%23181717.svg?style=plastic&logo=github&logoColor=white"></a>

**👉Install Android studio:-**
 - You can Install full package and also you can create emulator to run application. <a href="https://developer.android.com/studio"><img alt="AndriodStudioDownload" src="https://img.shields.io/badge/Andriod%20Studio-Download%20link-blue"></a>
 
 - After installation add environment variable to path--->
    - create new in user variable  & name it ANDROID\_HOME
    - copy path `C:\Users\username\AppData\Local\Android\Sdk` & paste it.
 - Go to PATH in system variable  & add these paths in it:
    >  `C:\Users\username\AppData\Local\Android\Sdk\platforms`
	
    >  `C:\Users\username\AppData\Local\Android\Sdk\platform-tools`
	
    >  `C:\Program Files\Android\Android Studio\bin`
	
    >  `C:\Users\username\AppData\Local\Android\Sdk\tools\bin`
	
    >  `C:\Users\username\AppData\Local\Android\Sdk\emulator`
	
    >  `C:\Users\username\AppData\Local\Android\Sdk\build-tools`
	
	to execute commands inside this folder


**👉Installation of IDE:-**
 * Pycharm with intellibot plugin
    - Navigate to <a href="https://www.jetbrains.com/pycharm/download/"><img alt="Pycharm" src="https://img.shields.io/badge/PyCharm-and%20Download%20it-black"></a>  in your system.
    - Click next to install and select checkbox for Create 64-bit shortcut on Desktop.
    - Go to File>>Settings>>Plugins and  search for intellibot and install IntelliBot, Robot Framework Support plugin.
 * Eclipse download
    - Navigate to <a href="https://www.eclipse.org/downloads/"><img alt="Eclipse" src="https://img.shields.io/badge/Eclipse-Download%20link-brightgreen"></a> to download Eclipse Integration with RobotFramework and RED
    - Open Eclipse, Goto Help >> Eclipse Marketplace
    - Search for RED, you will get RED Editor for RobotFramework, Install this and restart the eclipse

 * Installing PyDev for Eclipse
    - In Eclipse, click Help > Eclipse Marketplace.
    - Search for "PyDev" and click install and then restart eclipse when prompted.



**👉Libraries Installation:-**
 - Open Command Prompt (cmd) and run the below command.
```
    pip install robotframework
```

**👉Make sure all the packages inside the project interpreter are installed:-**
 - To verify follow the path
 - <a href="#"> <img alt="pycharm" src= "https://img.shields.io/badge/Open-PyCharm-lightgrey"></a>
 > File>Settings>Project interpreter
	
 > ![image](https://user-images.githubusercontent.com/87467505/156704202-eb554be0-ab4f-48de-938b-6f266bbd1e2f.png)

## 1. What exactly in it?
 * Introduces the basic Robot Framework syntax, how tests are executed, and how logs and reports look like
 * Framework Architecture:
    We have two below libraries:-
     - 1. Robot Standard Libraries: These test libraries are distributed with Robot Framework
     - 2. Robot Referenced Libraries : These are external Libraries installed by pip.
 * Folders
   - a) External keywords : This section is used to set up the common functions which will be used throughout the framework like locators,swipe  etc.
   - b) Resources: This section is used to set up all the global level parameters which will be used throughout the framework like library etc.
   - c) Test cases: This section is where all the tests are automated.
     * Package is created with name RegressionSuite and all the tests are automated in it.
     * For Ex: Under Test cases directory we have sub directory called RegressionSuite.
     * and under RegressionSuite we have tests Mobile UI with the following tests are mentioned below
    ![image](https://user-images.githubusercontent.com/87467505/156704646-376e46d6-b993-43ed-8266-22eb0f2f45b1.png)
  - d) TestData: This section will contain stored test data in form of json or excel which will be used by our test.
  - f) Json files: This section contains json file which contains all locators in the form of key value pair.
    * For Ex. Elements.json
  - g) Report: This section contains report.html and log.html file stored in it.
  - h) Snapshots: This section contains all the screenshots which are taken on testcases pass and fail condition.
    
## <img src="https://media.giphy.com/media/iY8CRBdQXODJSCERIr/giphy.gif" width="30px"> Usage
    
 - When using Robot Framework, it is generally recommended to write as easy-to-understand tests as possible.
 - This is illustrated by the following sample example
 - _Setting section_ contains all the required libraries that are required by the test
```
*** Settings ***

Library        AppiumLibrary
Resource       ../Resources/Library.robot


Test Setup       User_open_application
Test Teardown    User_close_application

Documentation   Test Cases for Login from Excel
```
 - Variables are used to hold a value, which can be used in test cases
```
*** Variables ***
${URL}  http://172.16.52.125:4723/wd/hub
```
    
```
*** Test Cases ***
TC_01- User should be able to login with multiple user
  [Tags]  Login
  [Documentation]  This Test Case will fetch username and password for multiple users from Excel File
  ${username_text}=      Read_Element_Locator  Login.username_textbox_xpath    ../JsonFiles/Login.json
  ${password_text}=      Read_Element_Locator  Login.password_textbox_xpath    ../JsonFiles/Login.json


  ${row}  Read_Number_Of_Rows    validlogin    ../TestData/TestData.xlsx
    FOR    ${i}    IN RANGE    1    ${row}+1
    ${username}    Read_Excel_Data_Of_Cell    validlogin    ${i}    1    ../TestData/TestData.xlsx
    ${password}    Read_Excel_Data_Of_Cell    validlogin    ${i}    2    ../TestData/TestData.xlsx
    input text   ${username_text}   ${username}
    input text   ${password_text}   ${password}
    Login_Button
    Logout_User
  END

```



- Running tests:
  - Tests are executed from the command line using the robot command
> Run Full file: 
```
	robot -T Framework.robot/ robot Framework.robot
```
	
   > Run specific Test Case : 
	
```
	robot -t "TestCaseName" FileName
```
	
Ex: ` robot -t "TC_01- User purchased the package of private lessions" Framework.robot`
	
 > Run with Tags :
	
```
	robot -i  TagName  FileName
```
Ex: `robot -i  Packages  Framework.robot`
	
> For Reporting :
	
```
    robot -r ../Report/Report.html -o ../Report/Output.xml -l ../Report/logs.html <Foldername>/<TestName>.robot
```
	
Ex: `robot -r ../Report/Report.html -o ../Report/Output.xml -l ../Report/logs.html Framework.robot`
	
> Run Particular TestCases in a Folder: 
	
```
    robot -s "TestsuiteName" FolderName
```
	
Ex: ` robot -s "TC_001.robot" TestCases`
	
- Generated results:
  - After running tests you will get report and log in HTML format.
    - 1.`report.html`
    - 2.`log.html`
    - 3.`output.xml`

<h1 align="center">  Thank you :blush:   </h1>