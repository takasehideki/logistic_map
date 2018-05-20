defmodule LogisticMapNif do
    use Rustler, otp_app: :logistic_map, crate: :logistic_map

    # When your NIF is loaded, it will override this function.
    def calc(_x, _p, _mu), do: :erlang.nif_error(:nif_not_loaded)
end