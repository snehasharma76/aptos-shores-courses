module robinson::my_shore {

    use std::signer;
    use std::string::{String,utf8};
    use std::vector;
    use std::error;
    use std::bcs;
    use std::debug::print;

    const E_RESOURCE_SHORTAGE: u64 = 1;
    const Min_trees: u8 = 20;

    struct GlobalData has key, drop {
        nb_tree: u8,
        has_river: bool,
        shore_location: address,
        daily_visitors: vector<u64>,
        island_name: String,
        nb_house: u64,
    }

    struct House has store, drop{
        no_of_members : u8,
        house_location : address,
        house_owner : address
    }

    struct Resources has store, drop{
        food: u64,
        log: u64
    }   

    struct VisitorInfo<ID, Age> has store { // add drop ability
        id: ID,
        age: Age,
    }

    fun init_house(s: signer, members: u8, location: address) {
        assert!(signer::address_of(&s) == @0x42, 0);
        let _house = House{
            no_of_members : members,
            house_location : location,
            house_owner:signer::address_of(&s),
        };
       
    }

    fun add_trees(data: &mut GlobalData) {

        data.nb_tree = data.nb_tree + 1
    }

    fun init_resource() {
        let _resources = Resources {
            food: 1,
            log: 2
        };
    }

    fun resources_avail( r: &Resources ) : (u64, u64) {
        let (food, log) = (r.food, r.log);
        (food, log)
    }

    fun cut_tree(tree: &mut GlobalData, r: &mut Resources){

        tree.nb_tree = tree.nb_tree - 1;
        r.log = r.log * 5;
        r.food = r.food / 2;
    }
    
    fun init_GlobalData(){
        let vec = vector::empty();
        vector::push_back(&mut vec, 40);
        let globalData = GlobalData{
            nb_tree: 10,
            has_river: true,
            shore_location: @0x42,
            daily_visitors: vec,
            island_name: utf8(b"SHUJU"), 
            nb_house: 1,   
        }; 
    }
    
    fun resource_day() : (u64, u64){
        let food_day: u64 = 10;
        let log_day: u64 = 5;
        (food_day, log_day)
    }

    fun check_resource(): bool {
        let (daily_food, daily_log) = resource_day();
        if (daily_food == 10 && daily_log != 6 ){
            true
        }
        else{
            false
        }
    }

    fun check_resourceShortage(r: &Resources){
        let (daily_food, daily_log) = resource_day();
        let (total_food, total_log) = resources_avail(r);
        assert!((total_food>= daily_food && total_log>=daily_log), error:: not_found(E_RESOURCE_SHORTAGE));
    }
    
    // fun add_member(h: &mut House){ 
    //    if(h.no_of_members >= 4)
    //   {
    //       abort 0;
    //   }
    //   h.no_of_members = h.no_of_members + 1;
    // }

    fun add_member(h: &mut House){ 
        assert! (h.no_of_members >= 4, 0);
        h.no_of_members = h.no_of_members + 1;
    }
    
   fun change_name(new_name: String, data: &mut GlobalData, s: signer){
        assert!(signer::address_of(&s) == @0x42, 0);
        let byte: vector<u8> = bcs::to_bytes(&new_name);
        data.island_name = utf8(byte);
    }

    fun build_house(data: &mut GlobalData){
        if(data.nb_tree < 5){
            data.nb_tree = data.nb_tree + 1;
        }
        else {
            data.nb_house = data.nb_house + 1;
            data.nb_tree = data.nb_tree - Min_trees;
        }
    }

     fun print_welcomeMessage(){
        let welcomeMessage = utf8(b"Welcome to our Island");
        print(&welcomeMessage);
    }

    fun print_dailyVisitors_usingloop(data: &GlobalData){
        let vec:vector<u64> = data.daily_visitors;
        let len:u64 = vector::length(&vec);
        let i = 0;
        loop {
            if (i < len) continue;
            if (i >= len) break;
            let visitor_today = vector::borrow(&vec, i);
            print(visitor_today);
            i = i + 1;
        };
    }

    fun print_dailyVisitors_usingwhile(data: &GlobalData){
        let vec:vector<u64> = data.daily_visitors;
        let len:u64 = vector::length(&vec);
        let i = 0;
        while (i < len) {
            let visitor_today = vector::borrow(&vec, i);
            print(visitor_today);
        };
    }

    // declare a function named `createVisitorID` with parameter `info` as mutable reference for struct `VisitorInfo<u64, u64>` and `visitor_age` of type `u64`
    // declare a variable `currentID` to store current id using `info.id`.
    // declare a variable `nextID` of type `u64` that increments currentID by 1
    // initialize VisitorInfo struct



}

