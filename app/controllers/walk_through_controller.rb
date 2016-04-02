class WalkThroughController < ApplicationController
  def index
    [
      {x: 136, y: 165, w: 270, h:53},
      {x: 135, y: 139, w: 272, h:28},
      {x: 411, y: 140, w: 64, h:39},
      {x: 475, y: 132, w: 232, h:25},
      {x: 502, y: 159, w: 55, h:25},
      {x: 635, y: 157, w: 59, h:22},
      {x: 151, y: 221, w: 253, h:20},
      {x: 149, y: 236, w: 266, h:28},
      {x: 484, y: 217, w: 224, h:41},
      {x: 520, y: 192, w: 186, h:25}
    ]
  end

  def upload
    render json: {}, status: :ok
  end

end