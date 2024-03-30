# Initializing Token and Executing Transfer

This lesson illustrates the initialization of a token and its subsequent transfer from a signer to a user.

### Initializing TokenIdentifier Struct:

 This section initializes a `TokenIdentifier` struct named `token` with two fields: `mutator_ref` and `burn_ref`. The `TokenIdentifier` struct is essential for managing the token's properties and controlling its lifecycle. Here's a breakdown:

 ```move
  // Initialize the TokenIdentifier struct with the mutator_ref and burn_ref, and move it to the token_signer's address.
    let token = TokenIdentifier {
        mutator_ref,
        burn_ref,
    };
    move_to(&token_signer, token);
 ```

 -   **TokenIdentifier Initialization**:
        -   The `TokenIdentifier` struct is initialized with the provided `mutator_ref` and `burn_ref`, ensuring the token's mutability and enabling the burning functionality.
 -   **Moving Token to Signer's Address**:
        -   Using the `move_to` function, the `token` struct is moved to the address of the `token_signer`, establishing the association between the token and the signer.

### Transferring the Token:
 This section handles the transfer of ownership of the token from the `token_signer` to the user. It involves generating a linear transfer reference and executing the transfer operation. Here's a closer look:

```move
// Generate a linear transfer reference from the transfer_ref and transfer the token to the user's address.
    object::transfer_with_ref(object::generate_linear_transfer_ref(&transfer_ref), address_of(user));
```
 -   **Generating Linear Transfer Reference**:
        -   Utilizing `object::generate_linear_transfer_ref()`, a linear transfer reference is created from the provided `transfer_ref`, ensuring a secure and authenticated transfer process.
 -   **Executing Transfer Operation**:
        -   The `object::transfer_with_ref()` function initiates the transfer, requiring two key inputs:
            -   The linear transfer reference obtained earlier.
            -   The address of the user, fetched using `address_of(user)`