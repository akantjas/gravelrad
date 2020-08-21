import { Controller } from "stimulus";

export default class extends Controller {
    static targets = [ 'count' ];

    initialize()	 {
      console.log(this.countTarget);
    }
}