# Quickcheck Playground

From the little elixir book by Benjamin Tan Wei Hao

## Installation

You have to install QuickCheck to your system. Later an elixir wrapper is used in the deps.

#### Section 11.1.1 from the book on installing

Installing QuickCheck is slightly more involved than the usual Elixir dependency, but not difficult. First, head over to QuviQ (www.quviq.com/downloads), and download QuickCheck (Mini). Unless you have a valid license, you should download the free version; otherwise, you’ll be prompted for a license. Here are the steps once you’ve downloaded the file:

1.  Unzip the file and cd into the resulting folder.

2.  Run iex.

3.  Run `:eqc_install.install()`.

If everything went well, you’ll see something like this:

```elixir
iex(1)> :eqc_install.install
Installation program for "Quviq QuickCheck Mini" version 2.01.0.
Installing in directory /usr/local/Cellar/erlang/18.1/lib/erlang/lib.
Installing ["eqc-2.01.0"].
Quviq QuickCheck Mini is installed successfully.”
“Bookmark the documentation at
/usr/local/Cellar/erlang/18.1/lib/erlang/lib/eqc-2.01.0/doc/index.html.
:ok
```

## Running

`mix test`

Inside `test/lists_eqc_test.exs` are the test(s). The commented out one will fail so you can see the responses from QuickCheck. I also have it that the generated values are inspected so you can see all the permutations that QuickCheck came up with up to 100. You can change that however by changing `@tag numtests: [n]` to as many as you want.
