Scripts: 
1) A script to create the mcp image for each tool scenario, such as 1-createMCP-Evaluate+TestRunning, 2-createMCP-ModelStructure+Package, etc.
   - Takes /Users/hernan/Documents/Cuis/Cuis-University-Installer/Cuis-Smalltalk-Dev as the place where the images and repos has to be taken
   - The non livetyping mcp shoud use the cuis image, not the cuisuniversity image, and run witht the cuis vm not the livetyping vm
   - When creating the images for each scenario, the non used tool groups should be removed from the image
   - The script should use the -s option of the VM
2) A script to run a scenario that should: 
   a) create the directory where Claude Code will run for the project, that should only use the configuration for Claude Code for this scenario, have in mind that I already have some skills in the ~/.anthropic directory that should not be used.
   b) copy the MCP image/sources/changes
   c) create the .mcp.json configuartion to use 2)
   d) create the skills and memory for Claude Code based on the parameters. 
   e) run the scenario that should tell claude code to implement the excercise base on the skills/memory/tools configured.
   f) The output should be: 
        1) All posible metrics of claude code work (tokens, cache use, tools used, etc). Should I use telemetry?
        2) all the executed tools, etc.
        3) the generated smalltalk code as package
        4) the saved mcp image/changes with the code
        All the output should copy to a directory with a tree structura based on the parameters adding the datetime of the run.     
        Something really important is for me to analize what claude code did, to see if I have to improve the skills, heuristics, etc.   
   The parameters are:
    - LLM Model: Default Fable 5.1
    - Effort: Default High
    - Tool scenarios
        - 1-Evaluate+TestRunning: It should only have the MCPImageTools + MCPTestRunningTools tool groups
        - 2-ModelStructure+Package: To 1-Evaluate+TestRunning should add MCPModelStructureTools + MCPPackageTools
        - 3-Search: To 2-ModelStructure+Package should add MCPSearchTools and MCPMethodFinderTools
        - 4-Refactoring: To 3-Search should add MCPRefactoringTools + MCPExtraRefactoringTools
        - 5-LiveTyping: To 4-Refactoring add MCPServerLiveTyping (provided tools and decorators)
        - 6-LiveTypingRefactoring: To 5-LiveTyping add MCPServerLiveTypingRefactorings (provided tools and decorators)
        - 7-Debug: To 6-LiveTypingRefactoring add MCPDebugTools 
    - Claude code configuration:
        - 1-Empty: No skills, nothing, it just knows the mcp tools
        - 2-EvaluateAsLastResource: The smalltalk_evaluate tool should only be used if no other tool is available for the task
        - 3-SearchBeforeImplement: Before implementing new behavior that operates on Smalltalk base clases, use the search tools to look for implementations that already solve the problem or part of the problem. Search by selector name parts or by example.
        - 4-Refactoring: Refactoring tools have precedence over other tools when changing classes, methods, source code, etc. 
        - 5-LiveTyping: Type information provided by LiveTyping tools should be used as much as possible. Use actual sender and actual implementor over normal senders and implementors. LiveTyping make Smalltalk look like a statically typed language regarding type information.
        - 6-LiveTypingRefactoring: Use actual scope over any other refactoring scope. Using refactorings with type information provided by LiveTyping is as refactoring code of a statically typed language
        - 7-DesignHeuristics: Follow the design heuristics defined in SmalltalkMentor
    - Development technique:
        - Free
        - TDD: red-green-refactor, one test at a time
        - test-after
    - Exercise: Name of the file containing the excercise 




Tools scenarios:
1) Only MCPImageTools + MCPTestRunningTools
2) 1) plus MCPModelStructureTools + MCPPackageTools
3) 2) plus MCPSearchTools and MCPMethodFinderTools --> usar código existente
4) 3) plus MCPRefactoringTools + MCPExtraRefactoringTools --> mejorar los cambios de código, 2 casos:
     - viendo que lo use solo 
     - proponer cambio al problema q implique refactoring
5) 3) plus MCPLiveTypingTools
6) 5) plus MCPLiveTypingTools + refactoring decorators
7) 6) plus MCPDebugTools --> arreglar test que fallan

Ejercicios


Comparar contra Java 
 - sin mcp server
 - con IntelliJ plugin mcp server: https://www.jetbrains.com/help/idea/mcp-server.html


