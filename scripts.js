function toggleStatus() {
    const status = document.getElementById("status");
    if (status.innerText === "Car is parked.") {
      status.innerText = "Car is driving.";
    } else {
      status.innerText = "Car is parked.";
    }
  }
  