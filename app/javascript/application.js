// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import { Application } from "@hotwired/stimulus";
import CheckboxController from "./controllers/checkbox_controller"; // Correct import

const application = Application.start();
application.register("checkbox", CheckboxController);
