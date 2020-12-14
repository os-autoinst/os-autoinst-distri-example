# Example distro for openQA ![isotovideo](https://github.com/os-autoinst/os-autoinst-distri-example/workflows/isotovideo/badge.svg)

example distro for openQA. Just runs one simple test where you need to create
the needles for.

To use this repository with openQA, clone this repo to
/var/lib/openqa/tests/<yourdistro>.

To use it standalone with isotovideo any other local path is fine.

When running tests based on the state in this repo the test is expected to
fail as no needles are present. Creating the needles is by intention left to
new users as a learning exercise by running the test distribution within
openQA and using the openQA internal needle editor to create a new needle.

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

A basic CI pipeline is defined within
[.github/workflows/isotovideo.yml](.github/workflows/isotovideo.yml)
showing how isotovideo can be run against the tests. Note that this pipeline
will succeed as long as isotovideo could successfully execute the complete
test flow regardless of their individual results.

A more advanced example is shown in
[.github/workflows/isotovideo-check-all-test-modules.yml](.github/workflows/isotovideo-check-all-test-modules.yml)
which defines a pipeline that will fail if any test module returns any other
status than "ok", for example "failed".

## License

This project is licensed under the GPL v2 license, see COPYING file for
details.
