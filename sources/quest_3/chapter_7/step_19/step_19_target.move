module robinson::my_shore {

    use std::signer;
    use std::string::{String,utf8};
    use std::vector;
    use std:: error;

    const E_RESOURCE_SHORTAGE: u64 = 1;

    struct GlobalData has key, drop {
        nb_tree: u8,
        has_river: bool,
        shore_location: address,
        daily_visitors: vector<u64>,
        island_name: String,
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
    //   h.no_of_members= h.no_of_members + 1;
    // }

    fun add_member(h: &mut House){ 
        assert! (h.no_of_members >= 4, 0)
        h.no_of_members = h.no_of_members + 1;
    }
    
}

