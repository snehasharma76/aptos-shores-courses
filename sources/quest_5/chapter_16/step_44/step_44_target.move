module robinson::shoreNFT {

    use aptos_framework::account::{Self, SignerCapability};
    use aptos_framework::event;
    use aptos_framework::object;
    use aptos_std::string_utils::{to_string};
    use aptos_token_objects::collection;
    use aptos_token_objects::token;
    use std::option;
    use std::signer::address_of;
    use std::signer;
    use std::string::{Self, String, utf8};

    struct TokenIdentifier has key {
        mutator_ref: token::MutatorRef,
        burn_ref: token::BurnRef,
    }

    
    struct CollectionCapability has key {
        capability: SignerCapability,
        burn_signer_capability: SignerCapability,
    }

    struct MintInfo has key {
        count: u64,
    }

    const APP_SIGNER_CAPABILITY_SEED: vector<u8> = b"APP_SIGNER_CAPABILITY";
    const BURN_SIGNER_CAPABILITY_SEED: vector<u8> = b"BURN_SIGNER_CAPABILITY";
    const COLLECTION_NAME: vector<u8> = b"ShoreID Collection";
    const COLLECTION_DESCRIPTION: vector<u8> = b"ShoreID Collection Description";
    const COLLECTION_URI: vector<u8> = b"https://scarlet-live-iguana-759.mypinata.cloud/ipfs/QmNXMDmpoQvty8grDz8cv8Varu6JQw6ZR3aGYC4o3yV6MD"; 

    fun init_module(account: &signer) {
        let (token_resource, token_signer_cap) = account::create_resource_account(account,APP_SIGNER_CAPABILITY_SEED,);
        let (_, burn_signer_capability) = account::create_resource_account(account,BURN_SIGNER_CAPABILITY_SEED,);

        move_to(account, CollectionCapability {
            capability: token_signer_cap,
            burn_signer_capability,
        });

        move_to(account, MintInfo{
            count: 0,
        });

        create_collection(&token_resource);
    }

}