<pet>
  <!-- HTML -->
  <button name="pet"  onclick={ imgState }>SEE PET</button>
  <br>
  <button name="post" ref="myPost" value="1" onclick={ setPost }>Post</button>
  <button name="wellbeing"ref="myWellbeing" value="1" onclick={ setWellbeing }>Wellbeing</button>


  <script>
    // JAVASCRIPT
    let tag = this;

    this.petPost = 0;
    this.petWellbeing = 0;

    this.setPost = function(event) {
      console.log(this.refs.myPost.value);
      this.petPost = this.refs.myPost.value++;
      alert(this.petPost);
    }
    this.setWellbeing = function(event) {
      this.petWellbeing++;
      alert(this.petWellbeing)
    }
    this.imgState = function(event){
      alert('In function');
      if(this.petPost== 0 && this.petWellbeing==0){
        alert('sleeping');
      }
      else if (this.petPost<= 3 && this.petWellbeing<=3) {
        alert('sad blue');
        return "http://i64.tinypic.com/xcq4gk.png"
      }
    }


  </script>
</pet>
