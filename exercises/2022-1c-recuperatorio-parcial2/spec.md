# Make-up Exam for the Second Midterm 1c 2022 – CustomerImporter: The Return

## Make-up of the 2nd Midterm: CustomerImporter - The Return

The company has done very well with the customer import system and there is more work to do!

We must import the sales made to the customers. For that, a CSV file like the following has to be used:

```
S, 2022/08/10,0001-00000022,1000        ← Line indicating that a sale was made (Sale)
EC,D,1122                               ← Buyer. It is an "Existing Customer"
P,1 kilo de huevos,700                  ← Product sold (Product)
P,1 kilo de manzanas,300
ES                                      ← Indicates the end of the sale data (End Sale)
S, 2022/08/11,0001-00000023,2500.00     ← Line indicating that a sale was made
NC,Juan, Perez,D,3344                   ← Buyer. It is a New Customer
P,1 Kilo y medio de lomo,2500.00        ← Product sold
ES                                      ← Indicates that it is the end of the sale data
```

The record types are the following:

1. **S**: Indicates that it is a sale record, with the date of the sale, the invoice number and the total of the sale. Every sale is made to a customer, which may (or may not) already exist in the system.
2. **EC**: Indicates a record of an already existing customer. It is the customer of the sale being imported, and it already exists in the system, which is why only the identification type and number, imported previously, come in it.
3. **NC**: Indicates a new customer record. It is the customer of the sale being imported, and it does not exist in the system yet, so it has to be imported completely, as if it came from the customers file.
4. **P**: Indicates a product record. It is the product that was sold, with the description and the price.
5. **ES**: Indicates that the sale data is finished.

The sale can only be created if it is valid. For a sale to be valid it must have a single related customer (buyer) and one or more products.

Develop the importer that lets this information be loaded into the system.

The importer must be robust with respect to format errors in the file; however, information consistency issues (e.g. that the total of the sale is the sum of the products) and data type issues (e.g. that the total is a valid number) must not be validated.

The importer only has to work with the transient system.

Use the file `CustomerImporter-Recu-2do-Parcial` as the starting point.

## Tips

1. Start by creating a generic CSV importer from the `CustomerImporter`. Remember the Insert Superclass and Push Up refactorings.
2. Use the `CustomerSystem` to store the sales too. Rename it accordingly.
3. The sale must be a valid and complete object from the moment it is created. Since its information comes in several records, it is recommended to use a Builder or similar to create the sale at the moment the ES record is found.
4. The date of the sale can be a String; it is not necessary to convert it to a Date.
5. It is not necessary to validate that the numbers are correct.
6. It is not necessary to do validations on the product (e.g. that the description is not empty).
