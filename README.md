# git-dirs2repos

git-dirs2repos is a helper tool to automatically create remote repositories from
all sub-folders and then commit them.

## Install

```sh
$ sudo make
```

## Usage

git-dirs2repos gets installed as a git command

```sh
$ git dirs2repos
ERR: No paths specified.
Usage: /usr/lib/git-core/git-dirs2repos [options] <path>...

  -u|--username <username> Set the GitHub username
  -p|--password <password> Set the GitHub password
  -g|--github <host>       Set the GitHub host (for GHE)
  -o|--org <organization>  Create repos under organization
  --private                Create remote repos as private repos
  -h|--help                Show this screen

It is recommended to create an access token instead of using a password. Please see
https://help.github.com/articles/creating-an-access-token-for-command-line-use/
$
```

If no username is supplied, it will use our cached active GitHub
username.

If no password is supplied, it will prompt you for one. It is
recommended to create an access token instead of using a password -
this is especially important if you have Two-Factor Auth enabled on
your account. Please see
https://help.github.com/articles/creating-an-access-token-for-command-line-use/
for further information.

You can optionally specify a different GitHub host - this is
used when dealing with GitHub Enterprise. The format for a GHE
path is: `https://<hostname>/api/v3/`.

You can also optionally specify an organization to create the
repos in. The user you are authenticating as must belong to the
organization given.

If you want the newly created repos to be created as private
repos, you can specify the --private flag. By default, repos
will be created as public.

## Examples

To create private repos for all subdirectories in the current directory on
GitHub Enterprise under the `my-organization` organization:

```sh
git dirs2repos -g https://github.enterprise.host/api/v3/ -u my-username .
--private -o my-organization
```
