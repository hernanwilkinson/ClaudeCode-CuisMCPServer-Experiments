# Make-up Exam for the First Midterm 1c 2022 – Types, types, types…

## Make-up of the 1st Midterm: Types, types, types…

A new developer implemented the functionality needed to determine, at the moment of importing a Customer (method `importCustomer` of `CustomerImporter`), whether the identification type is DNI or CUIT, with their corresponding validations.

He did the same at the moment of importing an Address (method `importAddress` of `CustomerImporter`), with the goal of being able to tell the old postal code (only 4 digits, e.g. 1636) from the new postal code (e.g. B1336BBE).

Because of these document types and postal code types, he added protocol in `Customer` and `Address` to tell them apart.

Luckily there are tests for everything new. However, it seems he was unaware of good design practices and used IF in places where he could have used polymorphism, and he also left quite a lot of repeated code.

Your task is to remove the IFs and the repeated code you consider necessary in order to leave a good design. Any design and implementation change you consider necessary can be made, but the tests have to be kept as they are.

Use the code already loaded in the category `CustomerImporter-Recu-1er-Parcial` as the starting point.

Work in the Cuis Smalltalk image this directory gives you access to; it is the only place your work is read from, and there is no interactive access to it. You work by writing Smalltalk scripts to files and running each one with `./cuis.sh <file.st>`: the script is evaluated in the image as an expression (declare temporaries first, if any) and the printString of its value is printed. If anything in a script fails, ERROR: and the error are printed, the command exits with status 1 and the image is left exactly as it was, so nothing the failing script did is kept; when a script ends normally the image is saved and everything it defined stays for the next one. Define classes with `Object subclass: #Name instanceVariableNames: '...' classVariableNames: '' poolDictionaries: '' category: 'CustomerImporter-Recu-1er-Parcial'` and methods with `Name compile: 'source' classified: 'category'` (a class side with `Name class compile:...`). Define the classes in the system category 'CustomerImporter-Recu-1er-Parcial' and the tests in the system category 'CustomerImporter-Recu-1er-Parcial-Tests'. `./cuis.sh run-tests.st` runs every test of those categories and prints the counts and the failures. Print anything else you need with `StdIOWriteStream stdout nextPutAll: ...; newLine`. Do not touch the image files themselves.
