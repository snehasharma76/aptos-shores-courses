# Generating Token References and Updating Mint Count

In this section, we'll delve into the code snippet responsible for generating various references for a newly created token and updating the mint count accordingly.

### Generating the token signer:

```move
let token_signer = object::generate_signer(&constructor_ref);
```

The `object::generate_signer` function is invoked with a reference to `constructor_ref`, representing the newly created token. It generates a signer for the token, stored in `token_signer`. This signer facilitates actions on behalf of the token, such as property modifications or ownership transfers.

### Generating the mutator reference:

```move
let mutator_ref = token::generate_mutator_ref(&constructor_ref);
```
Calling `token::generate_mutator_ref` with a reference to `constructor_ref` produces a mutator reference for the token, stored in `mutator_ref`. This reference permits modifications to the token's properties, including its name, description, or metadata.

### Generating the burn reference:

```move
let burn_ref = token::generate_burn_ref(&constructor_ref);
```
Utilizing `token::generate_burn_ref` with `constructor_ref` reference generates a burn reference for the token, stored in `burn_ref`. This reference enables the destruction of the token if needed.

### Generating the transfer reference:

```move
let transfer_ref = object::generate_transfer_ref(&constructor_ref);
```
Invoking `object::generate_transfer_ref` with `constructor_ref` reference generates a transfer reference for the token, stored in `transfer_ref`. This reference facilitates the transfer of token ownership to another account.

### Updating the mint count:

```move
mint_info.count = next_count;
```
The `count` field of the `mint_info` struct is updated with the value of `next_count`, effectively incrementing the mint count to track the total number of minted tokens.
