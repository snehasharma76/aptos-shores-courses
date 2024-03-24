module robinson::shoreNFT {

    use std::option::{Self, Option};
    use aptos_framework::object::{Self, ConstructorRef, Object};
    use aptos_token_objects::collection;
    use aptos_token_objects::property_map;
    use aptos_token_objects::token;
    use std::string::String;
    use std::signer;
    use std::error;

    const COLLECTION_NAME: vector<u8> = b"ShoreID";
    const COLLECTION_DESCRIPTION: vector<u8> = b"This is a NFT held by the people as an ID";

    fun init_module(creator: &signer) {
        let description = string::utf8(COLLECTION_DESCRIPTION);
        let name = string::utf8(COLLECTION_NAME);
        let uri = string::utf8(b"");
        collection::create_unlimited_collection(
            creator,
            description,
            name,
            option::none(),
            uri,
        );
    }

}