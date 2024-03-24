module robinson::shoreNFT {

    use std::option::{Self, Option};
    use aptos_framework::object::{Self, ConstructorRef, Object};
    use aptos_token_objects::collection;
    use aptos_token_objects::property_map;
    use aptos_token_objects::token;
    use std::string::String;
    use std::signer;
    use std::error;


    //declare a const `COLLECTION_NAME` of type vector<u8> with value "ShoreID"
    //declare a const `COLLECTION_DESCRIPTION` of type vector<u8> with value "This is a NFT held by the people as an ID"
    //declare a function `init_module` with parameter `creator` as a signer
    //inside the function body declare three variables `description`, `name` and `uri`.
    //store "COLLECTION_DESCRIPTION" into variable `description` as type `string` using `string::utf8` similarly store "COLLECTION_NAME` in variable `name` and empty utf8 string `b""` in variable `uri`
    //Call the `collection::create_unlimited_collection` function with arguments `creator`, `description`, `name`, `option::none()`, and `uri`

}