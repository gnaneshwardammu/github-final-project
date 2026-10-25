
function showPopup() {
    alert("Thank you! Your recommendation has been added successfully.");
}

const recommendationForm = document.getElementById("recommendation-form");
const recommendationList = document.getElementById("recommendation-list");

recommendationForm.addEventListener("submit", function (event) {
    event.preventDefault();

    const name = document.getElementById("recommendation-name").value.trim();
    const text = document.getElementById("new-recommendation").value.trim();

    if (text === "") {
        return;
    }

    const card = document.createElement("blockquote");
    card.className = "recommendation-card";

    if (name !== "") {
        const author = document.createElement("strong");
        author.textContent = name + ": ";
        card.appendChild(author);
        card.appendChild(document.createTextNode(text));
    } else {
        card.textContent = text;
    }

    recommendationList.appendChild(card);
    recommendationForm.reset();

    // Call only after successfully adding a recommendation.
    showPopup();
});
