import { Controller } from "stimulus";

export default class extends Controller {
    static targets = ["query", "bikes"]
    
    submit() {
        const value = this.queryTarget.value
        fetch(`/?query=${value}`, {headers: { accept: 'application/json'}})
        .then((response) => response.json())
        .then(data => { 
            console.log(data)

            var bikeHTML = "";
            var bikeArray = Object.values(data)[0]
            bikeArray.forEach(bike => {
             bikeHTML += this.bikeTemplate(bike)
           });
            this.bikesTarget.innerHTML = bikeHTML;
          });  
       }
    

    bikeTemplate(bike) {
        return `<h3>${bike.name}</h3>
        <h6>${bike.brand}</h6>`
    }


}