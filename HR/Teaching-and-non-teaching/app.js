const {createApp} = Vue
createApp({
    data(){
        return{
            teaching:[
                {
                    name: "Muhammad Ali",
                    dept: "Software Engineering",
                    phone: "(171) 555-2222"
                },
                {
                    name: "Babar Azam",
                    dept: "Management Sciences",
                    phone: "(313) 555-5735"
                },
                {
                    name: "Muhammad Rizwan",
                    dept: "Islamic Studies",
                    phone: "(503) 555-9931"
                }
            ],

            nonTeaching:[
                {
                    name: "Khizer Usama",
                    desig: "Admin",
                    phone: "(171) 555-2222"
                },
                {
                    name: "Iftikhar Ahmad",
                    desig: "Clerk",
                    phone: "(313) 555-5735"
                },
                {
                    name: "Shan Masood",
                    desig: "Sweeper",
                    phone: "(503) 555-9931"
                }
            ]
        }
    }
}).mount("#nav-tabContent");