# The Awesome Jekyll Template

###### Um template Jekyll completo com Bootstrap para Github Pages!

---

Este é um template completo para geração de sites estáticos, desenvolvendo paginas dinamicamente com [Jekyll](https://jekyllrb.com/). 
Desenvolva sites completos e dinâmicos, totalmente estáticos mesmo tendo contagem de visualizações, comentários ou posts.

[Demostração](https://jekyll-bootstrap.douglasmedeiros.dev/)

## Recursos

Configuração prontas que você vai encontrar nesse template:

- [Jekyll](https://jekyllrb.com/) com sua versão compatível com o Github Pages;
- [Bootstrap v5.0](https://getbootstrap.com/docs/5.0/getting-started/introduction/) com compilador [Sass](https://getbootstrap.com/docs/5.0/getting-started/build-tools/#sass);
- [Jekyll Minifier](https://github.com/Mendeo/jekyll-minifier) para compilação de HTML, CSS e JS;
- Efeitos de uma Landing Page com [AOS library](https://michalsnik.github.io/aos/)
- Configurações [globais](./_config.yml) de variáveis, diretórios e arquivos;
- Um [bashscript](./server.sh) para subir localmente seu projeto via Docker;
- Blog com paginação dinâmica, tags e categorias;
- Contagem de visualizações/curtidas com [CountAPI](https://countapi.xyz/);
- Sistema de comentários com [Disqus](https://disqus.com/);
- Formulario de contato com resposta via email com [Static Forms](https://www.staticforms.xyz/);

## Começando

Esse template já totalmente configurado, basta fazer o clone dele na sua maquina e executar o script para subir o servidor. Por padrão o servidor ira subir nas portas 80/4000/35729, sinta-se a vontade para mudar diretamente no script.

### Pré-requisitos

- Git
- Docker

### Instalação

1 -  Clone o repositorio

```sh
git clone https://github.com/medeirosinacio/jekyll-bootstrap-github-pages.git
```

2 -  Execute o script bash para subir o servidor local

```sh
./server.sh
```

3 - O servidor estara disponivel em seu ambiente local

> [http://localhost/index.html](http://localhost/index.html)

## Licença

Distribuído sob a licença MIT. Veja `LICENSE` para mais informações.