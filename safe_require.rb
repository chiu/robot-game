def safe_require(file)
  require file
rescue LoadError
  # ignore
end
