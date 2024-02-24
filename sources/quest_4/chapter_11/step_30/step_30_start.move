module robinson::shoreCurrency {

    use aptos_framework::object::{Self, Object};
    use aptos_framework::primary_fungible_store;
    //import Self, MintRef, FungibleAsset from fungible_asset library of aptos_framework module;
    //import option from standard library
    //import string::utf8 from standard library
    use std::signer;

    //declare a const `ASSET_SYMBOL` of type vector<u8> with value "SH";

    //create a struct named `ManagedFungibleAsset` with ability key with mint_ref as member.
    fun init_module(admin: &signer) {

    //declare a variable `constructor_ref` which invokes `object::create_named_object` with arguments (admin, ASSET_SYMBOL)
    //next invoke `primary_fungible_store::create_primary_store_enabled_fungible_asset`, which accepts five arguments  constructor_ref, option::none(), utf8(b"Shore Coin"), utf8(ASSET_SYMBOL), decimal with value 8,  a utf8(b"URL pointing to the icon representing the fungible asset") and another utf8(b"URL directing to the project")

    //declare a variable `mint_ref` which invokes `fungible_asset::generate_mint_ref` with argument `constructor_ref`
    //declare a variable `metadata_object_signer` which invokes `object::generate_signer with argument `constructor_ref`;
    //use the built-in function `move_to` with &metadata_object_signer as first argument and , ManagedFungibleAsset {mint_ref} as second argument
    }

    
    public entry fun mint(admin: &signer, to: address, amount: u64) {}

    public entry fun transfer(admin: &signer, from: address, to: address, amount: u64) {}

    public entry fun burn(admin: &signer, from: address, amount: u64) {}

} 