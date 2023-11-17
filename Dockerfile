# Use a imagem oficial do Ruby
FROM ruby:3.0.2

# Configuração do ambiente
ENV LANG=C.UTF-8 \
    BUNDLE_JOBS=4 \
    BUNDLE_RETRY=3

# Instalação das dependências do sistema
RUN apt-get update -qq && \
    apt-get install -y nodejs postgresql-client

# Criação e definição do diretório de trabalho
WORKDIR /myapp

# Cópia dos arquivos de configuração
COPY Gemfile Gemfile.lock /myapp/

# Instalação das gems
RUN bundle install

# Cópia dos arquivos do projeto
COPY . /myapp/

# Precompilação dos assets
# RUN bundle exec rails assets:precompile

# Comando padrão para iniciar o servidor Rails
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
