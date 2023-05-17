import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="heart"
export default class extends Controller {
  connect() {
    // this.element.addEventListener('click', (event) => {
    //   event.currentTarget.classList.toggle("animate");
    // })
  }
  animate(event) {
    event.currentTarget.classList.toggle("animate");
  }
}



// $(function() {
//   $(".HeartAnimation").click(function() {
//     $(this).toggleClass("animate");
//   });
// });

//add a data controller into html

// turn this into a target
//const heart = document.querySelector(".HeartAnimation")

// turn this into an action
// heart.addEventListener("click", (event) => {
//   event.currentTarget.classList.toggle("animate");
// })
