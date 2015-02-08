def webApp = new XmlSlurper().parse (new File("C:\\src\\MaaS\\current-release\\MAAS\\device-view\\war\\WEB-INF\\web.xml"))

String context = webApp."context-param".findAll {it."param-name" == 'contextConfigLocation' }[0]."param-value".text()

context.split(",").each { 
	String temp = it.trim().replaceAll ("classpath:", "")
	print temp+"\n"
}	
