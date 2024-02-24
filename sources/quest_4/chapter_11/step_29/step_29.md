# Understanding Fungible Tokens in Move

Fungible tokens are assets with interchangeable and divisible units. Like dollars - any dollar buys the same amount. Units can also be split into fragments. This allows fungibles to be efficiently traded, managed, and tracked on blockchains.Common examples are cryptocurrencies or in-game coins.
Aptos provides two distinct standards for token creation and management:

- **Coin(Legacy)**
- **Fungible Asset**

While Coin represents the older standard introduced during Aptos' mainnet launch, we will now explore the newer Fungible Asset standard and its features in detail.

#### Resource Management

The Aptos Fungible Asset standard uses two key resources for token management:

**Metadata Resource:** Holds fixed details like the token name, symbol, decimals. Needed for exchanges and UIs to display the token properly.
**FungibleStore:** A resource that contains interchangeable units of a fungible token. Stores can be split/merged flexibly as needed.
Using resources makes token capabilities modular.

#### Key Functions

Using FA resources, developers can perform essential actions like:-

- **Minting**: Creating new units of fungible tokens.
- **Burning**: Removing existing units from circulation.
- **Transferring**: Sending tokens between different storage locations.
- **Splitting/Merging**: Dividing or combining tokens as needed.'

These resources provide modular capabilities, allowing developers to organize and manage tokens effectively.

#### Type Safety

Move ensures type safety for fungible tokens:
-   **Custom Types**: Developers define specific types for their fungible tokens within their code.
-   **Runtime Checks**: Transactions involving these tokens are checked at runtime to ensure their validity, enhancing security and reliability.

---
Too many jargon terms isn't it? It might sound a little too overwhelming and that is why we are starting with a blank canvas where we start working on the code of an entirely new quest learning about Fungible tokens and build our own fungible assets as we proceed with the course. In this quest we will first create a module, do a few imports and then finally declare all the functions that are required to create your own token. It is a long to-do list so get all geared up to create your own shore currency. First create a shoreCurrency package under module `robinson` then import `object` library from `aptos_framework`, `primary_fungible_store` from `aptos_framework` and `signer` from standard library. Once you are done with the imports we will move to function declaration. Start with declaring a function `init_module` with parameter `admin` as a signer. Then declare a entry function `mint` of public visibility specifier with parameter `admin` as signer, `to` as address type and `amount` of type u64. Similarly declare a entry function `transfer` of public visibility specifier with parameter `admin` as signer, `from` as address type, `to` as address type and `amount` of type u64 and for the last one declare a entry function `burn` of public visibility specifier with parameter `admin` as signer, `from` as address type and `amount` of type u64. 

