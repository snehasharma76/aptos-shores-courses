module robinson::shoreCurrency {

    use aptos_framework::object::{Self, Object};
    use aptos_framework::primary_fungible_store;
    use std::signer;

    fun init_module(admin: &signer) {}

    public entry fun mint(admin: &signer, to: address, amount: u64) {}

    public entry fun transfer(admin: &signer, from: address, to: address, amount: u64) {}

    public entry fun burn(admin: &signer, from: address, amount: u64) {}

} 