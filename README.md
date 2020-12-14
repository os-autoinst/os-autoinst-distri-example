# Example distro for openQA ![isotovideo](https://github.com/os-autoinst/os-autoinst-distri-example/workflows/isotovideo/badge.svg)

example distro for openQA. Just runs one simple test where you need to create
the needles for.

To use this repository with openQA, clone this repo to
/var/lib/openqa/tests/<yourdistro>.

To use it standalone with isotovideo any other local path is fine.


## Communication

If you have questions, visit us on IRC in
[#opensuse-factory](irc://chat.freenode.net/opensuse-factory)


## Contribute

This project lives in
https://github.com/os-autoinst/os-autoinst-distri-example

Feel free to add issues in github or send pull requests.

### Rules for commits

* For git commit messages use the rules stated on
  [How to Write a Git Commit Message](http://chris.beams.io/posts/git-commit/)
  as a reference

If this is too much hassle for you feel free to provide incomplete pull
requests for consideration or create an issue with a code change proposal.

### Local testing and CI environment

This repo is intended to be used with openQA as a learning example. The
example was first featured in the workshop talk [osc14: Ludwig Nussel, How to
write openQA tests](https://youtu.be/EM3XmaQXcLg).

One can also use the same code for running standalone isotovideo. The workflow
based on isotovideo is also used by the CI pipeline which serves as another
example how one can integrate isotovideo into a CI pipeline, here based on the
example of github actions.

Find the latest status from CI runs in
https://github.com/os-autoinst/os-autoinst-distri-example/actions

The CI pipeline is defined within
https://github.com/os-autoinst/os-autoinst-distri-example/blob/master/.github/workflows/isotovideo.yml

## License

This project is licensed under the GPL v2 license, see COPYING file for
details.
