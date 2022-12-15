<template>
    <div class="container mt-5">
        <div class="row">
            <h2 class="d-flex justify-content-center">
                <span>
                    Scheme of Study
                </span>
            </h2>
        </div>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>
                    Course Code
                    </th>
                    <th>
                    Course Title
                    </th>
                    <th>
                    Credit Hours
                    </th>
                    <th>
                    Semester
                    </th>
                    <th>
                    Course Type
                    </th>
                    <th>
                        Actions
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="Course in course" :key="Course.id">
                    <td>
                    {{Course.Course_Code}}
                    </td>
                    <td>
                    {{Course.Course_Title}}
                    </td>
                    <td>
                    {{Course.Credit_Hours}}
                    </td>
                    <td>
                    {{Course.Semester}}
                    </td >
                    <td>
                    {{Course.Course_Type}}
                    </td>
                    <td>
                        <button type="button" class="btn btn-outline-danger" @click="deleteCourse(Course.id)">
                            Delete
                        </button>
                        <router-link :to="{name:'update', params:{id:Course.id} }" class="btn btn-outline-secondary mx-3">
                            Update
                        </router-link>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>



</template>

<script>




export default {
    data(){
        return{
            course:[],
        }
    },
    props:{
        id:{
            type:[ Number , String],
            required:true
        }
    },
    methods:{

        deleteCourse(value){
            fetch(`http://127.0.0.1:5000/delete/${value}`, {
                method:'DELETE',
                headers:{
                "Content-Type":"application/json"
                }
            })
            .then( () => {
                this.$router.go()
            })
            .catch(error => {
                console.log(error)
            })
        },
        getCourseData(){
            fetch(`http://127.0.0.1:5000/getsemester/${this.id}`, {
                method:'GET',
                headers:{
                "Content-Type":"application/json"
                }
            })
            .then(response => response.json())
            .then( data => {
                this.course = data
            })
            .catch(error => {
                console.log(error)
            })
        }
    },
    created(){
        this.getCourseData()
    }
}
</script>

<style>
th{
    background: linear-gradient(to right, #ff105f, #ffad06);
    background-clip: text;
    color: transparent;
}
</style>