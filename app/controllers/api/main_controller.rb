module Api
  class MainController < ApplicationController
    def index
      @data = [
        { id: 1, name: "rails" },
        { id: 2, name: "ruby" },
        { id: 3, name: "python" },
        { id: 4, name: "javascript" },
        { id: 5, name: "typescript" },
        { id: 6, name: "react" },
        { id: 7, name: "vue" },
        { id: 8, name: "angular" },
        { id: 9, name: "svelte" },
        { id: 10, name: "next.js" },
      ]
      render json: @data
    end
  end
end