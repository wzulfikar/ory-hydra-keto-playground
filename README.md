Play around with ory hydra & keto from inside a docker image.

hydra api docs: https://www.ory.sh/docs/api/hydra/
keto api docs: https://www.ory.sh/docs/api/keto/

```
# run the docker in detached mode (`-d`)
docker run -d --rm wzulfikar/ory-hydra-keto-playground

# start play around with hydra & keto
docker exec -it <container id> bash
hydra version
keto version
```

---

Expose container's port if you want to play around with the api using insomnia, postman, etc. from outside the container:

```
docker run -d --rm -p 4444:4444 -p 4466:4466 wzulfikar/ory-hydra-keto-playground
```

- hydra will be available from your localhost:4444
- keto will be available from your localhost:44656