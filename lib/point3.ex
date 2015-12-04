defmodule Geo3d.Point3 do

  import Geo3d.Utils

  @spec create() :: Geo3d.point3
  def create(), do: {0.0, 0.0, 0.0}

  @spec create(float, float, float) :: Geo3d.point3
  def create(x, y, z), do: {x, y, z}

  @spec create(Geo3d.point3) :: Geo3d.point3
  @spec create([float]) :: Geo3d.point3
  @spec create(float) :: Geo3d.point3
  def create({x, y, z}), do: {x, y, z}
  def create(a) when is_float(a), do: {a, a, a}
  def create([]), do: {0.0, 0.0, 0.0}
  def create([x, y, z|_]), do: {x, y, z}
  def create([x|_]), do: {x, x, x}

  @spec to_list(Geo3d.point3) :: [float]
  def to_list({x, y, z}), do: [x, y, z]

  @spec equal?(Geo3d.point3, Geo3d.point3) :: boolean
  def equal?({x1, y1, z1}, {x2, y2, z2}) do
    Geo3d.Utils.equal?(x1, x2) and Geo3d.Utils.equal?(y1, y2) and Geo3d.Utils.equal?(z1, z2)
  end

  @spec zero() :: Geo3d.point3
  def zero(), do: create()

  @spec x(Geo3d.point3) :: float
  def x({x, _y, _z}), do: x

  @spec y(Geo3d.point3) :: float
  def y({_x, y, _z}), do: y

  @spec z(Geo3d.point3) :: float
  def z({_x, _y, z}), do: z

  @spec at(Geo3d.point3, integer) :: float
  def at({x, _y, _z}, 0), do: x
  def at({_x, y, _z}, 1), do: y
  def at({_x, _y, z}, 2), do: z

  @spec invert(Geo3d.point3) :: Geo3d.point3
  def invert({x, y, z}), do: {-x, -y, -z}

  @spec distance_to(Geo3d.point3, Geo3d.point3) :: float
  def distance_to(v1, v2), do: :math.sqrt(distance_to_squared(v1, v2))

  @spec distance_to_squared(Geo3d.point3, Geo3d.point3) :: float
  def distance_to_squared({x1, y1, z1}, {x2, y2, z2}) do
    x = x1 - x2
    y = y1 - y2
    z = z1 - z2
    x * x + y * y + z * z
  end

end
