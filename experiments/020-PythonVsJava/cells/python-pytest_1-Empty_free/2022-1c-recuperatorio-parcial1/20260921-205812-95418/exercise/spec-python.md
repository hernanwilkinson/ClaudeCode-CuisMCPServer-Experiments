# Make-up Exam for the First Midterm 1c 2022 – Types, types, types…

## Make-up of the 1st Midterm: Types, types, types…

A new developer implemented the functionality needed to determine, at the moment of importing a Customer (method `import_customer` of `CustomerImporter`), whether the identification type is DNI or CUIT, with their corresponding validations.

He did the same at the moment of importing an Address (method `import_address` of `CustomerImporter`), with the goal of being able to tell the old postal code (only 4 digits, e.g. 1636) from the new postal code (e.g. B1336BBE).

Because of these document types and postal code types, he added methods to `Customer` and `Address` to tell them apart.

Luckily there are tests for everything new. However, it seems he was unaware of good design practices and used IF in places where he could have used polymorphism, and he also left quite a lot of repeated code.

Your task is to remove the IFs and the repeated code you consider necessary in order to leave a good design. Any design and implementation change you consider necessary can be made, but the tests have to be kept as they are.

Use the pytest project in the current directory (package `customerimporter`) as the starting point.
