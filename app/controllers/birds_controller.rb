class BirdsController < ApplicationController
  # def index
  #   @birds = Bird.all
  #   render 'birds/index.html.erb'
  # end

  #render as plain text
  # def index
  #   @birds = Bird.all
  #   render plain: "Hello #{@birds[3].name}"
  # end
  
  # In the browser's console
  # fetch('http://localhost:3000/birds').then(response => response.text()).then(text => console.log(text))
# ```text
#  Hello Mourning Dove
#  ```


  # render JSON string from the controller 
  def index
    @birds = Bird.all
    render json: 'Remember that JSON is just object notation converted to string data, so strings also work here'
  end

  def index
    @birds = Bird.all 
    render json: { message: 'Hashes of data will get converted to JSON'}
  end

  # we can call our collection of data 
  def index
    @birds = Bird.all
    render json: @birds
  end
  # should see that Rails has output all the data available from all the `Bird`
  # records!
  
  # After making a fetch req
  
  # Rails implicitly converts to the noted type(json: text: )

  # fetch('http://localhost:3000/birds').then(response => response.json()).then(object => console.log(object))
  
  # Promise {<pending>}
  # (4) [{…}, {…}, {…}, {…}] <= four bird objects

  def index
    @birds = Bird.all
    render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }.to_json 
  end

  # we can explicitly convert using to_json. 
  
  
  # We really only needed instance variables when we were rendering to ERB, instead just use a local variable.
  def index
    birds = Bird.all
    render json: birds 
  end
  # This is how we will be displaying our examples going forward.
end
