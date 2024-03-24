### Understanding Collection Initialization in Aptos Move

When initiating the creation of a NFT for the first time, developers are required to create a collection. Typically, this process occurs within the init_module function. Creating a collection necessitates a signer.

```move
const COLLECTION_NAME: vector<u8> = b"ShoreID";
const COLLECTION_DESCRIPTION: vector<u8> = b"This is a NFT held by the people as an ID";
```

- These lines define two constants, `COLLECTION_NAME` and `COLLECTION_DESCRIPTION`, as byte vectors using the `b` prefix.
- `COLLECTION_NAME` is set to the byte representation of the string "ShoreID".
- `COLLECTION_DESCRIPTION` is set to the byte representation of the string "This is a NFT held by the people as an ID".

```move
fun init_module(creator: &signer) {
    // Constructs the strings from the bytes.
    let description = string::utf8(COLLECTION_DESCRIPTION);
    let name = string::utf8(COLLECTION_NAME);
    let uri = string::utf8(b"");
```

- The `init_module` function is defined with a single parameter `creator` of type `&signer`, representing the account that will create the collection.
- Inside the function, three variables (`description`, `name`, and `uri`) are created by converting the byte vectors to strings using the `string::utf8` function from the Aptos Move standard library.
- `description` is constructed from `COLLECTION_DESCRIPTION`, `name` from `COLLECTION_NAME`, and `uri` from an empty byte vector `b""`.

```move
    // Creates the collection with unlimited supply and without establishing any royalty configuration.
    collection::create_unlimited_collection(
        creator,
        description,
        name,
        option::none(),
        uri,
    );
}
```
- The `collection::create_unlimited_collection` function is called to create a new collection with unlimited supply and without any royalty configuration.
- The `creator` argument is passed as the first parameter, indicating the account creating the collection.
- The `description`, `name`, and `uri` variables are passed as the corresponding arguments to the function.
- The `option::none()` is passed as the fourth argument, indicating that no royalty configuration is established for this collection.

---
Too many variables and constants to declare isn't it? It is fine we have got your back. Start one step at a time and you will be done with this step in no time. Declare a constant `COLLECTION_NAME` of type vector<u8> with value "ShoreID" then declare another constant `COLLECTION_DESCRIPTION` of type vector<u8> with value "This is a NFT held by the people as an ID"
Now declare a function `init_module` with parameter `creator` as a signer, inside the function body declare three variables `description`, `name` and `uri` store "COLLECTION_DESCRIPTION" into variable `description` as type `string` using `string::utf8` similarly store "COLLECTION_NAME" in variable `name` and empty utf8 string `b""` in variable `uri` Finally call the `collection::create_unlimited_collection` function with arguments `creator`, `description`, `name`, `option::none()`, and `uri`. 