# Withdraw Asset in Move

## Introduction
The `withdraw` function provides a mechanism for asset owners to withdraw assets from their accounts, disregarding the frozen status set on the account.

## Accessing Transfer Capability
In Move, burn privileges are encapsulated via a `TransferRef` capability:
```
struct ManagedFungibleAsset has key {
  mint_ref: MintRef,
  transfer_ref: TransferRef,
  burn_ref: BurnRef
}
```
This capability is held in the resource managing fungible asset. By default, only the resource owner can utilize it.

## Implementing a Withdraw Function
Withdraw logic checks for authority, checks if primary store exists, and finally withdraw the assets, let me break it down for you,
```
public fun withdraw(admin: &signer, amount: u64, from: address): FungibleAsset acquires ManagedFungibleAsset {
```
First we will declare a function withdraw and acquire `ManagedFungibleAsset`. The function returns a FungibleAsset representing the withdrawn assets. Well we have already explained what `acquire` is so we can move on to the next line.
```
 let asset = get_metadata();
```
Now, we get a reference to the resource managing transfer capability by calling the get_metadata() function.
```
let transfer_ref = &authorized_borrow_refs(admin, asset).transfer_ref;
```
Now, we borrow a mutable reference to the TransferRef using `authorized_borrow_refs` which accepts the signer address and the asset object. This basically helps us to access the transfer capability of the coin we created.
```
let from_wallet = primary_fungible_store::primary_store(from, asset);
```
Here we use the token storage framework library to get mutable references to the source wallet. We use `primary_store` function from `primary_fungible_store` to retrive the source wallet
```
fungible_asset::withdraw_with_ref(transfer_ref, from_wallet, amount)
```
Finally, we call the Aptos framework's `withdraw_with_ref` function with the acquired `TransferRef` capability, passing the address from which the asset will be withdrawn and finally the amount to be withdrawn.