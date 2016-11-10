defmodule Membrane.Element.Base.Filter do
  @moduledoc """
  This module should be used by all elements that are both sources and sinks.
  """


  defmacro __using__(_) do
    quote location: :keep do
      use Membrane.Element.Base.Mixin.Source
      use Membrane.Element.Base.Mixin.Sink
      use Membrane.Element.Base.Mixin.Process # Must be last
    end
  end
end
