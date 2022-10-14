FROM julia

ADD README.md Project.toml LICENSE /pkg/
ADD src/ /pkg/src/

RUN julia -e 'import Pkg; Pkg.develop(path="/pkg/"); Pkg.resolve(); Pkg.status(); Pkg.instantiate(); Pkg.precompile()'

CMD ["julia"]
