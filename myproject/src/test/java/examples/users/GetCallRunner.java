package examples.users;

import com.intuit.karate.junit5.Karate;

class GetCallRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("GetCallDemo").relativeTo(getClass());
    }    

}
