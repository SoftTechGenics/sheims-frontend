<template>
<div class="conatiner">
  <div class="row">
    <h3 class="d-flex justify-content-center">
      <span>
        Welcome to IUB Scheme of Study Management Panel
      </span>
    </h3>
    <p class="d-flex justify-content-center">
      Welcome to IUB SoS Management. Here you can add, update or view the scheme of study of IUB classes.
    </p>
  </div>
  <div class="row">
    <div class="col-md-3">
      <div class="card" style="width: 18rem;">
        <div class="card-body">
          <h5 class="card-title"><span>1st Semester</span></h5>
          <p class="card-text">To get the Scheme of Study of 1st Semester...</p>
          <router-link class="btn btn-light" :to="{name: 'details', params:{id:1}}">
            <span>
              click Here
            </span>
          </router-link>
        </div>
      </div>
    </div>
    <div class="col-md-3">
      <div class="card" style="width: 18rem;">
        <div class="card-body">
          <h5 class="card-title"><span>2nd Semester</span></h5>
          <p class="card-text">To get the Scheme of Study of 2nd Semester..</p>
          <router-link class="btn btn-light" :to="{name: 'details', params:{id:2}}">
            <span>
              click Here
            </span>
          </router-link>
        </div>
      </div>
    </div>
    <div class="col-md-3">
      <div class="card" style="width: 18rem;">
        <div class="card-body">
          <h5 class="card-title"><span>3rd Semester</span></h5>
          <p class="card-text">To get the Scheme of Study of 3rd Semester..</p>
          <router-link class="btn btn-light" :to="{name: 'details', params:{id:3}}">
            <span>
              click Here
            </span>
          </router-link>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-md-3">
      <div class="card" style="width: 18rem;">
        <div class="card-body">
          <h5 class="card-title"><span>4th Semester</span></h5>
          <p class="card-text">To get the Scheme of Study of 4th Semester..</p>
          <router-link class="btn btn-light" :to="{name: 'details', params:{id:4}}">
            <span>
              click Here
            </span>
          </router-link>
        </div>
      </div>
    </div>
    <div class="col-md-3">
      <div class="card" style="width: 18rem;">
        <div class="card-body">
          <h5 class="card-title"><span>5th Semester</span></h5>
          <p class="card-text">To get the Scheme of Study of 5th Semester..</p>
          <router-link class="btn btn-light" :to="{name: 'details', params:{id:5}}">
            <span>
              click Here
            </span>
          </router-link>
        </div>
      </div>
    </div>
    <div class="col-md-3">
      <div class="card" style="width: 18rem;">
        <div class="card-body">
          <h5 class="card-title"><span>6th Semester</span></h5>
          <p class="card-text">To get the Scheme of Study of 6th Semester..</p>
          <router-link class="btn btn-light" :to="{name: 'details', params:{id:6}}">
            <span>
              click Here
            </span>
          </router-link>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-md-3 offset-3">
      <div class="card" style="width: 18rem;">
        <div class="card-body">
          <h5 class="card-title"><span>7th Semester</span></h5>
          <p class="card-text">To get the Scheme of Study of 7th Semester..</p>
          <router-link class="btn btn-light" :to="{name: 'details', params:{id:7}}">
            <span>
              click Here
            </span>
          </router-link>
        </div>
      </div>
    </div>
    <div class="col-md-3 ">
      <div class="card" style="width: 18rem;">
        <div class="card-body">
          <h5 class="card-title"><span>8th Semester</span></h5>
          <p class="card-text">To get the Scheme of Study of 8th Semester..</p>
          <router-link class="btn btn-light" :to="{name: 'details', params:{id:8}}">
            <span>
              click Here
            </span>
          </router-link>
        </div>
      </div>
    </div>
  </div>
</div>
</template>

<script>


export default {

  data(){
    return{
      courses:[],
    }
  },


  methods:{
    getCourses(){
      fetch('http://127.0.0.1:5000/getsemester', {
        method:'GET',
        headers:{
          "Content-Type":"application/json"
        }
      })
      .then(response => response.json())
      .then( data => {
        this.courses = data
      })
      .catch(error => {
        console.log(error)
      })
    }
  },
  created(){
    this.getCourses()
  }



}
</script>

<style>
.container{
  margin: auto;
  padding: 20px;
}
.col-md-3, .row{
  margin: auto;
  padding: 10px;
}
.card{
  box-shadow: 0 0 4px 0 #ffa709;
  padding: 15px;
  margin-top: 25%;
  position: relative;
}
.card:hover{
  box-shadow: 0 0 8px 0 #ffa709;
}
span{
  background: linear-gradient(to right, #ff105f, #ffad06);
  background-clip: text;
  color: transparent;
}
</style>