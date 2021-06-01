REM Build application using ojdeploy
"%OJDEPLOY_PATH%\ojdeploy" -buildfile C:\JDeveloper\mywork\JBuild\ojbuild.xml -define application.root="%WORKSPACE%" REM Deploy EAR

REM weblogic.Deployer
call "C:\Users\micro_emp\AppData\Roaming\JDeveloper\system12.2.1.0.42.151011.0031\DefaultDomain\bin\setDomainEnv.cmd" %*
java weblogic.Deployer -adminurl http://127.0.0.1:7101/console -user weblogic -password weblogic1 -name DevOpsTestApp -undeploy
java weblogic.Deployer -adminurl http://127.0.0.1:7101/console -user weblogic -password weblogic1 -deploy -name DevOpsTestApp -source C:\JDeveloper\mywork\DevOpsTestApp\deploy\DevOpsTestApp.ear -targets DefaultServer