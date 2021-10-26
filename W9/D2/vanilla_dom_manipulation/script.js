document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items
  
  const addFavPlace = (event) => {
    event.preventDefault();
    
    const favInput = document.querySelector(".favorite-input");
    const favPlace = favInput.value;
    favInput.value = '';

    const ul = document.getElementById("sf-places");
    const li = document.createElement("li");
    li.textContent = favPlace;
    ul.appendChild(li);
  };

  const addFavPlaceSubmit = document.querySelector(".favorite-submit");
  addFavPlaceSubmit.addEventListener("click", addFavPlace);
  // --- your code here!


  // adding new photos
  const addPhotoForm = (event) => {
    event.preventDefault();
    const photoContainer = document.querySelector(".photo-form-container");
    if(photoContainer.className === "photo-from-container"){
      photoContainer.className = "photo-from-container hidden"
    } else {
      photoContainer.className = "photo-from-container"
    }
  }

  const photoFormButton = document.querySelector(".photo-show-button")
  photoFormButton.addEventListener("click", addPhotoForm);
  

  const submitPhoto = (event) => {
    event.preventDefault();
    const photoUrlInput = document.querySelector(".photo-url-input");
    const photoUrl = photoUrlInput.value;
    photoUrlInput.value = "";

    const newPhoto = document.createElement("img");
    newPhoto.src = photoUrl;

    const newPhotoItem = document.createElement("li");
    newPhotoItem.appendChild(newPhoto);

    const photoUl = document.querySelector(".dog-photos");
    photoUl.appendChild(newPhotoItem);
  }

  const photoSubmit = document.querySelector(".photo-url-submit");
  photoSubmit.addEventListener("click", submitPhoto);
  // --- your code here!
  
});
