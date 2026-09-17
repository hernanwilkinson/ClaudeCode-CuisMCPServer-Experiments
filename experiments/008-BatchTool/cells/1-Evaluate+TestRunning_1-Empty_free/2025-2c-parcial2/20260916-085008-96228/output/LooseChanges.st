!MCPImageTools methodsFor: #tools!
addToolsTo: anMCPServer

	anMCPServer
		addTool: self evaluateTool;
		addTool: self screenshotTool;
		addTool: self saveImageTool! !

