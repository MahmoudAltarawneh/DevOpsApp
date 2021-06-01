REM Build application using ojdeploy
"%OJDEPLOY_PATH%\ojdeploy" -buildfile C:\JDeveloper\mywork\JBuild\ojbuild.xml -define application.root="%WORKSPACE%" REM Deploy EAR
REM weblogic.Deployer
call "%WLS_DOMAIN_HOME%\bin\setDomainEnv.cmd" %*
java weblogic.Deployer -adminurl %WLS_ADMIN_URL% -user %WLS_ADMIN_USERNAME% -password %WLS_ADMIN_PASSWORD% -name %WLS_APPLICATION_NAME% -undeploy
java weblogic.Deployer -adminurl %WLS_ADMIN_URL% -user %WLS_ADMIN_USERNAME% -password %WLS_ADMIN_PASSWORD% -deploy -name %WLS_APPLICATION_NAME% -source %WORKSPACE%\%WLS_APPLICATION_NAME%\deploy\%WLS_APPLICATION_NAME%.ear -targets "%WLS_TARGETS%"
