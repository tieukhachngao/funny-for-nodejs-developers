#!/usr/bin/env bash
set -euo pipefail

# Person is represented by a name variable.

# NewPerson creates a new person. Takes in a name argument.
new_person() {
  PERSON_NAME=$1
}

# GetName returns the person's name.
person_get_name() {
  printf '%s\n' "$PERSON_NAME"
}

# SetName sets the person's name.
person_set_name() {
  PERSON_NAME=$1
}

example_new_person() {
  new_person bob
}

example_person_get_name() {
  new_person bob
  person_get_name
}

example_person_set_name() {
  new_person alice
  person_set_name bob
}

example_person_get_name
