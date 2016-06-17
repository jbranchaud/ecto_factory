defmodule User do
  use Ecto.Schema

  schema "users" do
    field :username
    field :age, :integer
    field :date_of_birth, Ecto.DateTime
  end
end

defmodule Project do
  use Ecto.Schema

  schema "tasks" do
    field :title
    field :description

    has_many :tasks, Task
  end

  @required_fields

  def changeset(model, params \\ :empty) do

  end
end

defmodule Task do
  use Ecto.Schema

  schema "tasks" do
    field :title
    field :due_at, Ecto.DateTime

    belongs_to :project, Project
  end
end
