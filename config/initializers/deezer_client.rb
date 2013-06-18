if(defined?(Rails))
  unless defined?(HYDRA)
    HYDRA = Typhoeus::Hydra.new
  end
end