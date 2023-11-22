# Common files for os-autoinst/os-autoinst and os-autoinst/openQA

This repository is to be used as a [git-subrepo]
(https://github.com/ingydotnet/git-subrepo). See the instructions below in the
[Git Subrepo Usage](#git-subrepo-usage) section

All dependencies in this project are sourced from what's available in openSUSE
Tumbleweed RPM repositories.

For developers not using RPM the tumbleweed repositories, a `cpanfile` is
provided and maintained in a best-effort basis.

## Tooling offered

This repo offers:

* Static check configuration for perl projects: `.perltidyrc`, `.perlcriticrc`,
  `.proverc` & `.tidyallrc`.
* Perlcritic policies that `os-autoinst/os-autoinst` and `os-autoinst/openQA`
  share.
* Useful tools for linting & testing:
    * A `perlcritic` wrapper that will automatically add Perlcritic rules
      defined under `lib/perlcritic` and
      `ext/os-autoinst-common/lib/perlcritic`.
    * A `tidyall` wrapper that will validate the Perltidy version against the
      `cpanfile` definition.  
      Because `Perl::Tidy` defaults may vary between versions this tool ensures
      the version of perltidy matches the required version specified in the
      `cpanfile` for non-`cpanm` based installs.

* Example Github Actions for linting and unit testing for Perl.

All files can be either copied or symlinked for any downstream repository
consuming these tools.

## Running tools and tests from scratch

```bash
# Run a container with the project mounted in it.
podman run -it -v "$PWD:/host/project" --workdir /host/project opensuse/leap:latest bash

# Inside the container
zypper in -y perl-App-cpanminus make gcc
cpanm --installdeps . --with-develop

prove .
./tools/tidyall --check-only --all --quiet
./tools/perlcritic --quiet .
```

## Git Subrepo Usage

`git-subrepo` is available in the following repositories:

[![Packaging status](https://repology.org/badge/vertical-allrepos/git-subrepo.svg)](https://repology.org/project/git-subrepo/versions)

### Clone

To use it in your repository, you would usually do something like this:

```bash
cd your-repo
git subrepo clone git@github.com:os-autoinst/os-autoinst-common.git ext/os-autoinst-common
```

This will automatically create a commit with information on what command
was used.

And then, if necessary, link files via symlinks to the places where you need
them.

The cloned repository files will be part of your actual repository, so anyone
cloning this repo will have the files automatically without needing to use
`git-subrepo` themselves.

`external` is just a convention, you can clone it into any directory.

It's also possible to clone a branch (or a specific tag or sha):

```bash
git subrepo clone git@github.com:os-autoinst/os-autoinst-common.git \
    -b branchname ext/os-autoinst-common
```

After cloning, you should see a file `ext/os-autoinst-common/.gitrepo` with
information about the cloned commit.

### Pull

To get the latest changes, you can pull:

```bash
git subrepo pull ext/os-autoinst-common
```

If that doesn't work for whatever reason, you can also simply reclone it like
that:

```bash
git subrepo clone --force git@github.com:os-autoinst/os-autoinst-common.git \
    ext/os-autoinst-common
```

### Making changes

If you make changes in the subrepo inside of your top repo, you can simply
commit them and then do:

```bash
git subrepo push ext/os-autoinst-common
```

## git-subrepo

You can find more information here:

* [Repository and usage](https://github.com/ingydotnet/git-subrepo)
* [A good comparison between subrepo, submodule and
  subtree](https://github.com/ingydotnet/git-subrepo/blob/master/Intro.pod)

## License

This project is licensed under the MIT license, see LICENSE file for details.
