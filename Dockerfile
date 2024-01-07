FROM anatolelucet/neovim:stable
RUN mkdir /runner
WORKDIR /runner
RUN apk add git make && git clone https://github.com/nvim-lua/plenary.nvim.git

COPY . /runner/harpoon/

ENTRYPOINT [ "sh", "-c", "cd /runner/harpoon && make test" ]
